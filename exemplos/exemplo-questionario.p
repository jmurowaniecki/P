#!/usr/bin/env tradutor
#
#    ↑
# Lembrando de sempre colocar na primeira linha do
# programa o nosso '#!tradutor'.
#
#
# Autor: Fulaninho de Tal <fulaninho@detal.com>
# Programa de exemplo.
#
#    ↑
# Não se esqueça também que quando a linha começa
# com o sustenido, jogo da velha, isso aqui ó: #
# significa que é um comentário - e que o programa
# não executa comentários - eles servem pra ajudar
# a quem for ler teu programa a entender o que ele
# faz.
# Então na linha logo abaixo do #!tradutor escreva
# teu nome, e-mail e do que o programa se trata, o
# que ele deveria fazer, essas coisas.
#
# Pra resumir bem direitinho dá uma olhada em como
# vai ficar aqui em baixo, ó:
# ↓

#!tradutor
#
# Autor: Fulaninho de Tal <fulaninho@detal.com>
# Programa de exemplo.





# Função QUESTIONARIO serve para iniciar ou limpar
# o questionário.
#
#       Para dizer que estamos criando uma função
#       precisamos escrever O_NOME_DA_FUNÇÃO logo
#       a seguir de ( ) e { }.
#           ↓
QUESTIONARIO() {

    # Função OCORREU_UM_ERRO serve para mostrar ao
    # usuário que houve um erro e que após dois
    # segundos o questionário vai ser realizado
    # novamente.
    OCORREU_UM_ERRO() {
        ESCREVE "HOUVE UM ERRO COM SUA RESPOSTA: $*"
        ESCREVE "TENTE NOVAMENTE."
        ESPERE 2 SEGUNDOS

        QUESTIONARIO
    }



    ESCREVE "OI TUDO BEM? QUAL SEU NOME?"
    PERGUNTA NOME


    # Utilizamos o SE para testar o valor de uma
    # variável com uma condição que você queira.
    SE $NOME FOR VAZIO ENTÃO OCORREU_UM_ERRO "FALTOU VOCÊ DIZER SEU NOME."



    ESCREVE "HUMMM... $NOME, ESPERE UM POUCO..."
    ESPERE 2 SEGUNDOS
    ESCREVE "..PRECISO PENSAR MAIS UM POUCO..."
    ESPERE 3 SEGUNDOS
    ESCREVE "BRINCADEIRINHA."

    ESCREVE "OLÁ $NOME, QUANTOS ANOS VOCÊ TEM?"
    PERGUNTA IDADE



    # Veja que podemos usar o SE para além de testar
    # os valores das variáveis, definir outro valor
    # para elas.
    SE $IDADE FOR MAIOR QUE 18 ENTÃO VARIÁVEL TIPO SERÁ 'ADULTO'
    SE $IDADE FOR MAIOR QUE 40 ENTÃO VARIÁVEL TIPO SERÁ 'IDOSO'
    SE $IDADE FOR MENOR QUE 18 ENTÃO VARIÁVEL TIPO SERÁ 'ADOLESCENTE'
    SE $IDADE FOR MENOR QUE 15 ENTÃO VARIÁVEL TIPO SERÁ 'PRÉ-ADOLESCENTE'
    SE $IDADE FOR MENOR QUE 12 ENTÃO VARIÁVEL TIPO SERÁ 'CRIANÇA'

    # Assim como podemos usar o SE para executar um
    # comando ou função caso a condição seja verdadeira.
    SE $IDADE FOR MENOR QUE 5 ENTÃO OCORREU_UM_ERRO 'VOCÊ NÃO PODE SER MENOR DE 5 ANOS.'
}
# Apenas para lembrar que as funções servem também
# para ajudar você a manter seu código organizado,
# permitindo que tu divida ele em partes menores
# que vão ser mais fáceis de entender.
# Não esqueça que o conteúdo da função fica dentro
# das { }, então quando você declara uma função, a
# chave de abertura {
#   …
#   …
#   …
# } precisa ser fechada (;



# Veja que estamos executando a função que criamos
# logo ali em cima.
EXECUTAR QUESTIONARIO



# E depois de executar a função podemos mostrar um
# resumo. Olha que prático:
ESCREVE "$NOME, VOCÊ TEM $IDADE ANOS E É $TIPO"



# E então nosso programa terminou.
