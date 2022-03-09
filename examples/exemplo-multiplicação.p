#!tradutor
#
# Programa de exemplo para calcular a multiplicação de um número por outro número.
# Autor: John



# Exemplo de cálculo fixo, sem a interação com o usuário.
VARIAVEL A É 3
VARIAVEL B É 5

VARIAVEL RESULTADO É $(SOMA $A $B)

ESCREVE "VARIAVEL A É IGUAL A $A"
ESCREVE "VARIAVEL B É IGUAL A $B"
ESCREVE "A SOMA DE $A + $B = $RESULTADO"



# Exemplo com interação do usuário (perguntando).
ESCREVE "VALOR PARA 'A' ?"
PERGUNTA A

ESCREVE "VALOR PARA 'B' ?"
PERGUNTA B

VARIAVEL RESULTADO É $(SOMA $A $B)

ESCREVE "A SOMA DE $A + $B = $RESULTADO"
