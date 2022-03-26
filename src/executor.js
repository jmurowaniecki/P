const vscode = require('vscode')
const fs     = require('fs')
const path   = require('path')

const COMMAND = {
  EXECUTE: 'PdPaula.execute-p-file',
  CREATOR: 'PdPaula.create-p-file',
}

/**
 * @param {vscode.ExtensionContext} context
 */
const activate = (context) => {
  context.subscriptions.push(vscode.commands.registerCommand(COMMAND.EXECUTE, () => executor(context)))
  context.subscriptions.push(vscode.commands.registerCommand(COMMAND.CREATOR, () => vscode.window.showInformationMessage('Preparando para criar novo arquivo m .P', context)))
}
exports.activate = activate

// this method is called when your extension is deactivated
const deactivate = () => {}

module.exports = {
  activate,
  deactivate,
}

async function executor(context) {
    vscode.window.activeTextEditor.document.save();

    const terminal = vscode.window.createTerminal({
        name: `$(icon) .P`,
        iconPath: 'assets/v1.gif',
        shellPath: 'bash',
        shellArgs: ["--noprofile", "--norc", "-c", "source $(which pdpaula)"],
        env: {
            "PS1": "> ",
        },
        hideFromUser: false,
        isTransient: true,
    });

    terminal.sendText(`pdpaula ${vscode.window.activeTextEditor.document.fileName}`);
    terminal.show();

    // const { code } = await vscode.TerminalWrapper.execInTerminal(cwd, command, {}).waitForResult();

    // if (code) {
    //     const processExecMsg = `${cwd}$ ${command}`;
    //     vscode.window.showInformationMessage(`Process failed with exit code ${code} (${processExecMsg})`, context)
    //     throw new Error(`Process failed with exit code ${code} (${processExecMsg})`);
    // }
    vscode.window.showInformationMessage('Parabéns!', context);
}
