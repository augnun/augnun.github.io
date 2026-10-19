+++
title = "Problema 2089 do Leetcode"
date = 2021-09-12
difficulty = "Fácil"

[taxonomies]
tags = ["programação", "Leetcode"]
categories = ["Programação"]
+++

O [problema 2089 do Leetcode](https://leetcode.com/problems/find-target-indices-after-sorting-array) é um clássico de ordenação e interpretação de listas, bem fácil.


```python 
class Solution:
    def targetIndices(self, nums: list[int], target: int) -> list[int]:
        nums.sort()
        resultado = []
        for k, v in enumerate(nums):
            if v == target:
                resultado.append(k)
        return resultado
```

Como é um probleminha simples, é um candidato padrão pra escrevermos a solução em Rust, uma linguagem mais "esotérica":

```rust
impl Solution {
    pub fn target_indices(mut nums: Vec<i32>, target: i32) -> Vec<i32> {
        nums.into_iter()
            .enumerate()
            .filter_map(|(i, val)| if val == target { Some(i as i32) } else { None })
            .collect()
    }
}
```

Essa é uma "tradução" do código em Python, $(O(N log N))$ no tempo e $O(1)$ no espaço. Já que a gente não precisa saber onde `target` está depois da ordenação, dá pra contar quantos números são menores que `target` - que nos dá o índice inicial - e quantos são iguais a `target`, que nos dá a amplitude sem ordenar o _array_:

```rust
impl Solution {
    pub fn target_indices(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut count_less = 0;
        let mut count_equal = 0;

        for num in nums {
            if num < target {
                count_less += 1;
            } else if num == target {
                count_equal += 1;
            }
        }

        (count_less..count_less + count_equal).collect()
    }
}
```
