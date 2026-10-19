+++
title = "Problema 20 do Projeto Euler"
date = 2021-09-13

[taxonomies]
tags = ["matemática", "programação"]
categories = ["Geral"]
+++

Um probleminha bem simples, contar a soma dos dígitos de um fatorial bem grande, $100!$.

```python
import math

for i in str(math.factorial(100)):
    soma += int(i)
print(soma)
```

Bem curtinho, abusando da "produtividade" do Python de trocar tipo inteiro pra _string_ e vice-versa. 

Em Rust, que é uma linguagem bem mais verbosa e segura que Python, precisamos importar duas bibliotecas (_crates_): `num-bigint` e `num-traits`, e o código é consideravelmente maior:

```rust
use num_bigint::BigUint;
use num_traits::One;

fn main() {
    // Calcula o fatorial de 100
    let mut fatorial: BigUint = One::one();
    for i in 1..=100u32 {
        fatorial *= i;
    }

    // Converte para string, itera sobre os caracteres e soma os dígitos
    let soma: u32 = fatorial
        .to_string()
        .chars()
        .filter_map(|c| c.to_digit(10))
        .sum();

    println!("{}", soma);
}
```

- `BigUint` e `One` são tipos e traits de `num-bigint`, já que $100!$ é $93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000$, um número grande pra dedéu;

- `fatorial *= i` é pra calcular o fatorial propriamente;

- `to_string().chars()` é justamente a conversão do inteiro grandão $100!$ para o tipo _char_ do Rust;

- `.filter_map(|c| c.to_digit(10))` é a conversão na direção contrária, de _char_ para inteiro na base 10;

- `.sum()` soma tudo.