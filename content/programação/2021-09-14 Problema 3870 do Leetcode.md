+++
title = "Problema 3870 do Leetcode"
date = 2022-01-25

[taxonomies]
tags = ["matemática", "programação"]
categories = ["Geral"]
+++

Esse é mais um dos [probleminhas](https://leetcode.com/problems/count-commas-in-range) com uma solução bem elegante, se a gente pensar certinho na matemática da coisa.

Temos uma fórmula tradicional para contar a quantidade de inteiros entre dois números $A$ e $B$: 

$$B - A + 1$$

Tome, por exemplo, a quantidade de inteiros entre $3$ e $5$, inclusive. Se simplesmente subtrairmos $5 - 3$, chegamos a $2$, ou seja, falta um número. Utilizando $5 - 3 + 1$, temos 3, o número correto.

Então, se nós quisermos saber quantos números de $1$ até $n$ são grandes o suficiente para precisar de pelo menos uma vírgula - na tradição americana, na nossa, seria o ponto - precisamos pensar o seguinte:

- O menor número que precisa de uma vírgula é $1,000$. Vale também para $1,001$, $1,002$, etc. Então o intervalo de números que precisa da vírgula começa em $1000$, e termina em $n$. 


```python
class Solution:
    def countCommas(self, n: int) -> int:
        commas = 0
        step = 1000
        
        while n >= step:
            commas += (n - step + 1)
            step *= 1000
            
        return commas
```

Como é um problema simples, tentei fazer uma solução em Rust também:


```rust
impl Solution {
    pub fn count_commas(n: i32) -> i32 {
        let mut commas: i64 = 0;
        let mut step: i64 = 1000;
        let n_64 = n as i64;
        
        while n_64 >= step {
            commas += n_64 - step + 1;
            step *= 1000;
        }
        
        commas as i32
    }
}
```

- Para previnir _overflow_, já que por padrão no Leetcode $n$ é `i32`, e `step` é multiplado por $1000$ a cada iteração, converti $n$ para `i64` em `n_64 = n as i64`;
- O Rust trabalha com retorno implícito, como `commas as i32` é a última instrução, ela serve como retorno.
- Graças às considerações de segurança de memória do Rust, precisamos declarar as variáveis `commas` e `step` como `mut`, para que sejam modificadas ao longo do _while_.