#!/usr/bin/env tradutor

VARIÁVEL DIRECOES DEVE SER "wasd"
VARIÁVEL MENSAGEM DEVE SER "Bem vindo!"

MAPA DA CIDADE É "\
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░                                                                              ░
░ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ░
░ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ░
░ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ░
░                                                                              ░
░ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ░
░ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ░
░ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ░
░                                                                              ░
░ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ░
░ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ░
░ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ▓▓▓▓▓▓ ░
░                                                                              ░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
"

LIMITE=(13 78)

MARCA "A" EM  1  1
MARCA "B" EM  5 78
MARCA "C" EM 11 50


RASTRO=( )
POSICAO=(1 2)



function DIRIGIR() {
    LIMPAR
    MOSTRA "${CIDADE} (${POSICAO[0]},${POSICAO[1]})"
    MOSTRA "${MENSAGEM} "
    MOSTRA -n "Aperte Q para sair e ${DIRECOES} para andar : ${DIRECAO}"
    LETRA DIRECAO

    SE $DIRECAO FOR IGUAL "w" ENTÃO VARIÁVEL CAMINHO É "CIMA"
    SE $DIRECAO FOR IGUAL "a" ENTÃO VARIÁVEL CAMINHO É "ESQUERDA"
    SE $DIRECAO FOR IGUAL "s" ENTÃO VARIÁVEL CAMINHO É "BAIXO"
    SE $DIRECAO FOR IGUAL "d" ENTÃO VARIÁVEL CAMINHO É "DIREITA"

    MOVIMENTA_PARA "${CAMINHO}"

    DIRIGIR # Para continuar dirigindo
}



function MOVIMENTA_PARA() {
    RASTRO=(${POSICAO[0]} ${POSICAO[1]})
    declare -i linha=${POSICAO[0]}
    declare -i coluna=${POSICAO[1]}

    VARIÁVEL MENSAGEM É "Movendo para ${1}.\\a"

    case "${1}" in
        CIMA) linha+=-1;;
        BAIXO) linha+=1;;
        DIREITA) coluna+=1;;
        ESQUERDA) coluna+=-1;;
    esac

    #
    # Agora precisamos nos certificar de que estamos caminhando dentro
    # do nosso mapa.
    #
    # Onde o mapa começa:
    SE $linha  FOR MENOR QUE          1   ENTÃO VARIÁVEL linha É 1
    SE $linha  FOR MAIOR QUE ${LIMITE[0]} ENTÃO VARIÁVEL linha É ${LIMITE[0]}
    #
    # E onde o mapa termina:
    SE $coluna FOR MENOR QUE          1   ENTÃO VARIÁVEL coluna É 1
    SE $coluna FOR MAIOR QUE ${LIMITE[1]} ENTÃO VARIÁVEL coluna É ${LIMITE[1]}

    POSICAO=(${linha} ${coluna})

    function OBSTACULO_ENCONTRADO() {
        VARIÁVEL MENSAGEM É "Obstáculo encontrado. Não posso ir além. \a"
        POSICAO=(${RASTRO[0]} ${RASTRO[1]}) # Voltando para posição anterior.
    }

    SE $(POSICAO ${POSICAO[0]} ${POSICAO[1]}) FOR IGUAL "▓" ENTÃO OBSTACULO_ENCONTRADO

    MARCA "·" EM ${RASTRO[0]}  ${RASTRO[1]}
    MARCA "@" EM ${POSICAO[0]} ${POSICAO[1]}
}

DIRIGIR
