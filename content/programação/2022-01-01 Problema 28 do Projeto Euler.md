+++
title = "Problema 28 do Projeto Euler"
date = 2021-01-01
difficulty = "Fácil"

[taxonomies]
tags = ["matemática", "Projeto Euler"]
categories = ["Geral"]
+++

O [problema 28](https://projecteuler.net/problem=28) do Projeto Euler traz uma curiosidade matemática. 

A espiral numérica utilizada nesse problema é intrinsicamente ligada a um fenômeno visual bem conhecido na matemática: a [Espiral de Ulam](https://prime-numbers.fandom.com/wiki/Ulam_Spirals). Em 1963, o matemático Stanislaw Ulam estava rabiscando no canto de um papel durante uma apresentação chata (quem nunca?), e ele desenhou uma espiral similar à listada nesse problema. 

Quando Ulam viu o que tinha rabiscado, ele percebeu um padrão. Ao invés de se espalharem "aleatoriamente" (em si um termo carregado), os primos se concentravam em diagonais específicas. A representação visual demonstra que certos polinômios quadráticos geram uma densidade inesperada de primos. A descoberta foi tão significativa que virou capa da Scientific American de Março de 1964, e permanece um resultado popular em Teoria dos Números porquê a motivação para essa concentração ainda não é bem conhecida. 

Cada linha reta saindo do centro da espiral representa uma equação quadrática distinta. Já que o tamanho dos _lados_ da espiral aumenta em 2 unidades com cada novo anel, as _faltas_ entre cada um dos números em qualquer diagonal dada forma uma progressão aritmética, o que matematicamente garante um relacionamento quadrático. 

Seja $n$ o número do anel cujo centro 
$1$ é $n=0$; a espiral $3 x 3$ é $n=1$, a espiral $5x5$ é $n=2$, etc. nós podemos expressar as diagonais como:

- Diagonal superior direita: $4n^2 + 2n + 1$;
- Diagonal superior esquerda: $4n^2 + 1$;
- Diagonal inferior esquerda: $4n^2 - 2n + 1$;
- Diagonal inferior direita: $4n^2 - 4n + 1$

Já que o intuito dos problemas do Projeto Euler é justamente unir os resultados matemáticos com uma implementação computacional, um dos possíveis códigos para resolver o problema é o seguinte:

```python
def sum_spiral_diagonals(size):
    if size < 1 or size % 2 == 0:
        return 0
    
    total_sum = 1
    
    for s in range(3, size + 1, 2):
        top_right = s**2
        
        step = s - 1
        
        layer_sum = 4 * top_right - 6 * step
        
        total_sum += layer_sum
        
    return total_sum

result = sum_spiral_diagonals(1001)
print(f"A soma dos números nas diagonais de uma espiral 1001x1001 é : {result}")
```

## Forma fechada com complexidade de tempo $O(1)$
Pra esse problema, um _loop_ _for_ seria suficiente pra responder em tempo $O(N)$, um dos problemas comuns no Projeto Euler é utilizar algum atalho para responder em tempo $O(1)$. A gente quer ser capaz de responder para uma espiral $1001x1001$ tão rápido quanto pra uma $5x5$.

Somando as quatro fórmulas quadráticas para qualquer anel $k$, chegamos a $16k^2 + 4k + 4$.

Aplicando as fórmulas algébricas de somas de polinômios quadráticos e lineares:

$$\text{Total} = 1 + \frac{8}{3}n(n+1)(2n+1) + 2n(n+1) + 4n$$
