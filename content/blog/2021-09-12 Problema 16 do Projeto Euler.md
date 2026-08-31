+++
title = "Problema 16 do Projeto Euler"
date = 2021-09-12

[taxonomies]
tags = ["matemática", "programação"]
categories = ["Geral"]
+++

O [problema 16](https://projecteuler.net/problem=16) do Projeto Euler é um problema simples de soma de dígitos. Quase cabe num [_one-liner_](https://en.wikipedia.org/wiki/One-liner_program)


```python
num = 2**1000
ans= 0
for i in str(num):
    ans = ans+ int(i)
```