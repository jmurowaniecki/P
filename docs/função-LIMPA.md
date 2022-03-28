# Função LIMPA

Limpa a tela, variável ou arquivo.

Utilize para apagar os dados na tela, variáveis e arquivos antes de imprimir novos.

```sh
LIMPA TELA                   # Para limpar a tela.
```
```sh
LIMPA VARIÁVEL NOME          # Para limpar a variável NOME.
```
```sh
LIMPA ARQUIVO registros.txt  # Para limpar o arquivo registros.txt.
```

Alias para o comando: `limpa`, `Limpa`, `limpar`, `Limpar`, `LIMPAR`, `LIMPA`.

## Exemplos

> O exemplo ao lado mostra como a variável NOME foi limpa.
> ```sh
> ESCREVE "Olá! Qual seu nome?"
> PERGUNTA NOME
>
> ESCREVE "Pazer em conhece-lo ${NOME}! Mas agora vou esquecer você."
> LIMPA VARIÁVEL NOME
>
> SE "${NOME}" FOR VAZIO ENTÃO ESCREVE "Olá forasteiro!"
>```
> Retorna o seguinte teste:
> ```sh
>  Olá! Qual seu nome?
>    John
>
>  Pazer em conhece-lo John! Mas agora vou esquecer você.
>
>  Olá forasteiro!
>```
