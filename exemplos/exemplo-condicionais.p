#!/usr/bin/env tradutor
#
# Autor: John <jmurowaniecki@gmail.com>
#
# Exemplo de blocos de condicionais:

# VARIÁVEL idade É 16

ESCREVE "Qual sua idade?"
PERGUNTA idade

SE $idade É MAIOR QUE 17 && {

    SE $idade É MAIOR QUE 65 && {
        ENTÃO ESCREVE "Com $idade é idoso."
    } || {
        SENÃO ESCREVE "Com $idade anos já é adulto."
    }
} || {

    SE $idade É MAIOR QUE 15 && {
        ENTÃO ESCREVE "Com $idade anos já é quase adulto mas..."
    }
    SENÃO ESCREVE "É criança ainda"
}
