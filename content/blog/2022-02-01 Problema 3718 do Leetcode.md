+++
title = "Problema 3718 do Leetcode"
date = 2022-02-01

[taxonomies]
tags = ["programação"]
categories = ["Geral"]
+++

Uma outra plataforma legal de aprendizado é o [Leetcode](https://leetcode.com).

Hoje vou falar um pouco sobre o [problema 3718 - Menor Múltiplo Faltante de K](https://leetcode.com/problems/smallest-missing-multiple-of-k).

Dado um array de inteiros `nums` e um inteiro `k`, retorne o menor múltiplo possível de `k` que não está em `nums`.

```python
from typing import List

class Solution:
    def smallestMissingMultiple(self, nums: List[int], k: int) -> int:
        num_set = set(nums)
        
        multiple = k
        
        while multiple in num_set:
            multiple += k
            
        return multiple
```

- Ao converter `nums` em um conjunto, em particular um _hash set_ (todos os conjuntos em Python são assim), a gente passa a complexidade *da busca* de $O(N)$ para $O(1)$.

- O primeiro múltiplo de $k$, é $k$, então inicializamos `multiple = k`.

- No `while`, verificamos se `multiple` está em `num_set`, se estiver, adicionamos `k` a `num_set`.