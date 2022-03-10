# Blocos de instruções

Um bloco de instruções nada mais é do que uma coleção de comandos organizada de forma encapsulada, seja em uma função, um retorno, callback ou outros.



Um bloco de comandos simples pode ser escrito da seguinte forma:
```bash
EXECUTA && {
    ESCREVE "ESTA É UMA MENSAGEM DE"
    ESCREVE "  DENTRO DO BLOCO DE"
    ESCREVE "      COMANDO"
}
```



Um bloco de instruções pode ser descrito como uma função, conforme o exemplo a seguir:

```bash
DESCREVER() {
    VARIAVEL NOME  É ${1}
    VARIAVEL IDADE É ${2}

    ESCREVE "${NOME} TEM ${IDADE} ANOS."
}

EXECUTA DESCREVER JOHN 37
EXECUTA DESCREVER PAULA 8
EXECUTA DESCREVER DIONISIO 6
```