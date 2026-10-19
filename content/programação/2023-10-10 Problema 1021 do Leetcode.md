+++
title = "Problema 1021 do Leetcode"
date = 2022-02-01

[taxonomies]
tags = ["Leetcode","programação"]
categories = ["Geral"]
+++
Mais um [problema de parênteses no Leetcode](https://leetcode.com/problems/remove-outermost-parentheses).  Os problemas de _parsing_ de parênteses/chaves/colchetes são tradicionais na ciência da computação e no desenho de algoritmos, porque são essencialmente interpretadores - e validadores - de sintaxe. 

- Em compiladores e interpretadores, os algoritmos de _bracket-matching_ constroem as [_Abstract Syntax Trees_ (ASTs)](https://en.wikipedia.org/wiki/Abstract_syntax_tree) como estágio intermediário;
- Para os editores de texto, nem se fala. Cada caractere que a gente digita gera vários eventos de _parsing_ e _matching_;
- Interpretar estruturas hierárquicas como JSON e XML também precisa desse tipo de validação.
Para resolver um problema desses a solução cai em uma das 3 categorias, geralmente:

- A pilha (LIFO): Quando iteramos uma através de uma _string_, você coloca cada parêntese aberto numa pilha, e quando encontrar um fechamento de parêntese, retira o top da pilha e verifica se eles correspondem. Se a pilha estiver vazia quando você tentar retirar, ou se o parêntese retirado não correspondente àquele que fecha, sua _string_ é inválida. Essa abordagem é exigida quando temos parênteses, chaves e colchetes; 
- Avaliar se o estado está "equilibrado" é uma boa estratégia quando se tem apenas um tipo de sinal, e.g. parênteses, já que é mais eficiente que $O(N)$ que a memória de uma pilha. Você pode simplesmente usar um inteiro para acompanhar o "balanço", ou profundida, incrementando quando você encontra um parêntese aberto e decrementando quando encontra um fechado. Se o contador atingir um estado negativo, a _string_ é inválida;
- Ao invés de interpretar uma _string_, você pode usar um algoritmo que **constrói** _strings_ adicionando `(`ou `)` baseado em certas limitações, e.g. você não pode adicionar um `)` se a contagem de  `(` não é estritamente superior à de `)`.

Nesse problema em particular:

- Sempre que a gente encontrar um `(`, conferimos se a nossa profundidade (`depth`) é $> 0$. Caso seja, esse parêntese é parte de uma _string_ interior válida, então nós a adicionamos ao nosso resultado. Então, incrementamos a profundidade.
- Quando encontramos um `)`, nós imediatamente decrementamos a profundidade. Se a profundidade ainda for $> 0$, isso significa que esse `)` não é o mais externo, então nós adicionamos ao nosso resultado.
- O parêntese mais externo de qualquer _substring_ primitiva sempre ocorrerá quando `opened` mudar de $0$ para $1$, no caso de `(`; e de $1$ para $0$, no caso de `)`. Isso significa que eles foram filtrados corretamente. 

```python
class Solution:
    def removeOuterParentheses(self, s: str) -> str:
        res = []
        opened = 0
        
        for char in s:
            if char == '(':
                if opened > 0:
                    res.append(char)
                opened += 1
            elif char == ')':
                opened -= 1
                if opened > 0:
                    res.append(char)
                    
        return "".join(res)
```
