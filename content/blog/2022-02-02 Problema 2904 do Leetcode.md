+++
title = "Problema 2904 do Leetcode"
date = 2022-02-01

[taxonomies]
tags = ["Leetcode","programação"]
categories = ["Geral"]
+++

O [Problema 2904](https://leetcode.com/problems/shortest-and-lexicographically-smallest-beautiful-string/description), _"Shortest and Lexicographically Smallest Beautiful String"_ é um problema conceitualmente simples: data uma string binária `s` e um inteiro positivo `k`, queremos qual é a menor _substring_ lexicograficamente "bela" de `s`. Uma _string_ é bela se o número de dígitos `1` nela é exatamente  `k`.

```python
class Solution:
    def shortestBeautifulSubstring(self, s: str, k: int) -> str:
        ans = ""
        ones_count = 0
        left = 0
        
        for right in range(len(s)):
            if s[right] == '1':
                ones_count += 1
                
            while ones_count == k:
                candidate = s[left:right + 1]
                
                if not ans:
                    ans = candidate
                elif len(candidate) < len(ans):
                    ans = candidate
                elif len(candidate) == len(ans) and candidate < ans:
                    ans = candidate
                    
                if s[left] == '1':
                    ones_count -= 1
                left += 1
                
        return ans
```

- Nós temos 2 ponteiros, `left`e `right`, que representam a janela flutuante sobre a _string_ `s`;
- `right` é iterado na _string_, incrementando a variável `ones_count` sempre que o dígito `1` é encontrado;
- Assim que a nossa janela identifica exatamente `k` dígitos `1`, encontramos uma _string_ bela, que é avaliada em relação à _string_ armazenada em `ans`, que por sua vez é atualizada de acordo com os critérios de beleza e de menor comprimento lexicográfico;
- Então, nós diminuímos o tamanho da janela incrementando `left` para verificar se existe outra _string_ bela ainda menor;
- Essa é uma solução que usa janelas flutuantes, uma abordagem algorítmica tradicionalmente associada a estruturas de dados lineares como _arrays_ e _strings_, mantendo um subconjunto "móvel" dos dados originais ao invés da estrutura de dados integral.

- A complexidade de tempo de uma janela flutuante é $O(N)$, em oposição a $O(N^2)$ se tivéssemos escolhido _loops_ encadeados