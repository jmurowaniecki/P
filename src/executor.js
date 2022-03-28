const vscode = require('vscode')
const fs     = require('fs')
const path   = require('path')
const os     = require('os');
const user   = os.userInfo();

const COMMAND = {
    STARTUP: 'PdPaula.jumpstart',
    EXECUTE: 'PdPaula.execute-p-file',
    CREATOR: 'PdPaula.create-p-file',
}

/**
 * @param {vscode.ExtensionContext} context
 */
const activate = (context) => {
    context.subscriptions.push(vscode.commands.registerCommand(COMMAND.STARTUP, () => startupx(context)))
    context.subscriptions.push(vscode.commands.registerCommand(COMMAND.EXECUTE, () => executor(context)))
    context.subscriptions.push(vscode.commands.registerCommand(COMMAND.CREATOR, () => creative(context)))
}
exports.activate = activate


// this method is called when your extension is deactivated
const deactivate = () => {}

module.exports = {
    activate,
    deactivate,
}

async function startupx(context) {
    vscode.window.showInformationMessage(`Oi "${user.username}"! Nós vamos ajudar a configurar essa parada, pode ser?`, context)
}

async function creative(context) {
    vscode.window.showInputBox({
        placeHolder: "O que seu programa vai fazer?",
        description: "Name your component."
      }).then(program => {
        const filename = program.replace(/\s+/g, '-').toLowerCase() + '.p';
        const folderPath = vscode.workspace.workspaceFolders[0].uri.toString().split(':')[1];
        const htmlContent = `#!/usr/bin/env pdpaula
#
# ${program}
#
# Autor: ${user.username}
#`;
        vscode.window.showInformationMessage(`Preparando para criar arquivo "${filename}"...`, context);

        fs.writeFile(path.join(folderPath, filename), htmlContent, (err) => {
          if (err) {
            return vscode.window.showErrorMessage(
              `Falha ao criar "${filename}" !!!`
            );
          }
          vscode.window.showInformationMessage(`Arquivo "${filename}" criado com sucesso!`, context);
        });
    });
}

async function executor(context) {
    const program  = vscode.window.activeTextEditor.document;
    const filename = ((name, comment) => {
        let file = comment.match(/#.*\n[#\n]*# (.*)\n/);
        return file[1] || name;
    })(program.fileName, program.getText(0, 200));

    vscode.window.activeTextEditor.document.save();

    if (vscode.window.activeTerminal) {
        if (vscode.window.activeTerminal.name === filename) {
        } else {
            vscode.window.showInformationMessage(`${vscode.window.activeTerminal.state} ${vscode.window.activeTerminal.name} has ${vscode.window.activeTerminal.exitStatus}`, context);
        }
    }

    vscode.window.terminals.forEach(terminal => {
        vscode.window.showInformationMessage(vscode.MarkdownString(`$(gear~spin) Atualizando programa <b>${terminal.name}</b>...`), context);
        terminal.dispose();
    })

    const terminal = vscode.window.createTerminal({
        name: `${filename}`,
        iconPath: 'assets/v1.gif',
        shellPath: 'bash',
        shellArgs: ["--noprofile", "--norc", "-c", "source $(which pdpaula)"],
        env: {
            "PS1": "> "
        },
        hideFromUser: false,
        isTransient: true,
    });

    terminal.sendText(`pdpaula ${program.fileName}`);
    terminal.show();

    vscode.window.showInformationMessage(`Programa "${program.fileName}" executado com sucesso!`, context);
}
