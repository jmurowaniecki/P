#!/usr/bin/env pdpaula
#
# Autor: John <jmurowaniecki@gmail.com>
#
# Exemplo de blocos de comandos:

PAULA() {
    ESCREVE "JOGA ROBLOX"
}

GATO() {
    ESCREVE "MIAU"
}

CACHORRO() {
    ESCREVE "AUAU"
}

PASSARINHO() {
    ESCREVE "PIUPIU"
}

VACA() {
    ESCREVE "MUUUU"
}



# As funções acima, como pudemos ver, escrevem na tela o som que
# cada um dos animaizinhos faz.. Porém agora precisamos pegar a
# lista que estamos passando para o nosso programa e executar
SONS() {
    ESCREVE "A $1 FAZ $($1 2>/dev/null || ESCREVE 'Não sei')"
}

ITERA SONS COM "${@^^}"
# Lembrando que quando usamos um dólar $ significa que aquilo é
# uma variável e que variáveis parecidas com essas que estamos
# trabalhando são variáveis "especiais".
#
# Quando utilizamos números, por exemplo, significa que os valores
# que utilizamos são os informados na ordem do comando, por exemplo:
#
#           COMANDO    PRIMEIRO SEGUNDO TERCEIRO
#              ^          ^        ^       ^
#           É o nome      |        |       |
#           do comando    |        |      $3
#             a ser       |       $2
#           executado.    $1
#
# COMANDO() {
#    ESCREVE "$1" # ... Vai escrever PRIMEIRO
#    ESCREVE "$2" # ... Vai escrever SEGUNDO
#    ESCREVE "$3" # ... Vai escrever TERCEIRO
# }
PAULA() {
    ESCREVE "PAULA com tudo maiúsculo"
}
Paula() {
    ESCREVE "Paula com a primeira maiúscula e o resto tudo minúsculo"
}
paula() {
    ESCREVE "paula com tudo minúsculo"
}

# PAULA
# Paula
# paula

FUNCAO() {
    ESCREVE "função executando $1: $($1)"
}


ITERA FUNCAO COM Paula PAULA paula
