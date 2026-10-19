+++
title = "Problema 17 do Projeto Euler"
date = 2022-09-13

[taxonomies]
tags = ["matemática", "programação"]
categories = ["Geral"]
+++

O [problema 17](https://projecteuler.net/problem=17) do Projeto Euler é um dos vários exemplos onde a gente precisa usar divisão inteira e restos para resolver um problema relacionado a datas.

```python
def count_letters(n):
    ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

    if n == 1000:
        return len("onethousand") # 11 letters

    word = ""
    hundreds = n // 100
    remainder = n % 100

    if hundreds > 0:
        word += ones[hundreds] + "hundred"
        if remainder > 0:
            word += "and"

    if 10 <= remainder < 20:
        word += teens[remainder - 10]
    else:
        tens_digit = remainder // 10
        ones_digit = remainder % 10
        
        if tens_digit > 0:
            word += tens[tens_digit]
        if ones_digit > 0:
            word += ones[ones_digit]

    return len(word)

total_letters = sum(count_letters(i) for i in range(1, 1001))
```