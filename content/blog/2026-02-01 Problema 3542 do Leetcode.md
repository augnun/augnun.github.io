+++
title = "Problema 3524 do Leetcode"
date = 2022-01-25

[taxonomies]
tags = ["matemática", "programação"]
categories = ["Geral"]
+++

Mais um problema do Leetcode que a gente consegue resolver usando Programação Dinâmica. Essa sequência de operações de remoção e inserção nos dá um _array_ contíguo, não vazio. Nós precisamos encontrar a o número de _subarrays_ contíguos cujo produto módulo $k$ é igual a $x$ para todo $0 <= x < k$.

Vamos manter um dicionário dos restos dos produtos para os _subarrays_ terminados na posição atual:

```python
from typing import List

class Solution:
    def resultArray(self, nums: List[int], k: int) -> List[int]:
        res = [0] * k
        
        current_counts = {}
        
        for num in nums:
            next_counts = {}
            
            val = num % k
            next_counts[val] = 1
            
            for prev_val, count in current_counts.items():
                new_val = (prev_val * num) % k
                next_counts[new_val] = next_counts.get(new_val, 0) + count
                
            for val, count in next_counts.items():
                res[val] += count
                
            current_counts = next_counts
            
        return res
```
