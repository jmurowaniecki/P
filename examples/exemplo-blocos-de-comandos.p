#!/usr/bin/env tradutor
#
# Autor: Fulaninho de Tal <fulaninho@detal.com>
# Exemplo de blocos de comandos

# Vamos criar e executar um bloco de comandos simples:
EXECUTA && {
    ESCREVE "ESTA É UMA MENSAGEM DE"
    ESCREVE "  DENTRO DO BLOCO DE"
    ESCREVE "      COMANDO"
}



# Um bloco de comandos pode ser descrito como uma função:
DESCREVER() {
    VARIAVEL NOME  É ${1}
    VARIAVEL IDADE É ${2}

    ESCREVE "${NOME} TEM ${IDADE} ANOS."
}

EXECUTA DESCREVER JOHN 37
EXECUTA DESCREVER PAULA 8
EXECUTA DESCREVER DIONISIO 6
