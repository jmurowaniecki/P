# <img src="assets/pdpaula.gif" align="left" /> Change Log

Se você tem alguma ideia, crítica, dica, sugestão ou opinião sobre o que pode ou deve ser feito - ou melhor ainda: evitado - gostaríamos que entrasse em contato abrindo uma issue descrevendo a situação.

Lhe garantimos estar de braços abertos para sua opinião.

---

## Unreleased

- Passo a passo para fazer uma SINALEIRA/SEMÁFORO;
- Tem como fazer um chat?
- Tem como fazer um jogo?
- Tem como fazer uma cidade?
- Tem como desenhar na tela ou mudar as cores?
- **TECH**: tokens para execução de comando com parâmetros;
- **TECH**: tokens para diferenciação de condições simples SE/SENÃO;
- **TECH**: tokens para diferenciação de SWITCHES, CASES e outros;
- **TECH**: man pages para o "interpretador"/executor;
- **TECH**: categorização das demandas;
- **TECH**: automatização na geração/atualização do arquivo de syntaxe;
- **TECH**: otimização do processo de carga da extensão `{vscode.ExtensionContext} context .. `;
- **TECH**: buscar nome e e-mail do autor das configurações do Git para criação de novos arquivos;
- **TECH**: automatização da configuação do Git/Github e perfil de uso no primeiro acesso;
- **TECH**: atualizar exemplos para novo formato;
- **TECH**: alguns exemplos utilizam entrada através de parâmetros da execução do programa, como fazer isso quando executado pela IDE? Caixa de texto? Busca por incidência de uso do `${@}` (incorreto)?

## version 1.0.1
- Melhoria na documentação das funções;
- Inclusão de [geração de número aleatórios](docs/fun%C3%A7%C3%A3o-ALEATORIO.md);
- Inclusão de botão "Novo programa" para criação de novo arquivo com template no diretório atual;
- Preenchimento do template de novo arquivo com o nome do programa e o autor;
- [Documentação das funções existentes](docs/README.md);
- **TECH**: atualizar exemplos para novo formato (1/6);
- **TECH**: scripts auxiliares para documentação das funções via NPM;
- Corrige comportamento anormal da função SE-SENÃO;

## version 1.0.0
- Possibilidade de escrever os comandos com letras maiúsculas, apenas primeira maiúscula ou todas minúsculas (como a 'maioria dos adultos' faz no dia-a-dia);
- Inclusos snippets comuns da linguagem;
- Incluso botão "PLAY" para execução direta via VSCode;
- Melhorias na arte das paradinhas;
- Melhores formas de condições SE-ENTÃO-SENÃO (simplificação usando modelo do shell - ao menos até encontrar um modelo melhor de explorar os TOKENS);

## version 0.1.6
- Correção de [blocos de instruções](docs/blocos-de-instruções.md);
