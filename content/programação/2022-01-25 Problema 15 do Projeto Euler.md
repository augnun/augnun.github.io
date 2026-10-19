+++
title = "Problema 15 do Projeto Euler"
date = 2022-01-25

[taxonomies]
tags = ["matemática", "programação"]
categories = ["Geral"]
+++

Eu tô há alguns anos tentando completar todos os problemas do [Projeto Euler](https://projecteuler.net). Vou começar a postar alguns que eu achar mais interessantes.

O [problema 15](https://projecteuler.net/problem=15) é sobre caminhos reticulados. Começando no canto superior esquerdo de um reticulado quadrado, sempre serão necessários $N x N$ passos para alcançar o ponto final. O problema então é facilmente resolvível calculando o coeficiente binomial $\binom{2N}{N}$, já que ele pede para enumerar a quantidade de possíveis rotas para um reticulado $\binom{20}{20}$

Uma das coisas legais dos problemas do Projeto Euler é que, mesmo os mais simples, podem desembocar em outros problemas, às vezes muito mais sofisticados:

- Se o reticulado não fosse quadrado, mas sim retangular de dimensões $N x M$, a ideia seria basicamente a mesma, mas teríamos que calcular o coeficiente binomial $\binom{N+M}{N}$;

- Se tivéssemos obstáculo(s) nesse _trajeto_, o problema passaria a ser mais facilmente resolvível utilizando técnicas de programação dinâmica. A solução puramente matemática seria bem mais sofisticada, envolvendo a utilização do [Princípio da Inclusão-Exclusão](https://noic.com.br/materiais-informatica/curso/math-05/)

- Se adicionarmos uma terceira dimensão, passando de um reticulado $N x M$ para um cubo $N x M x P$, usaríamos [coeficientes multinomiais](https://pt.wikipedia.org/wiki/Teorema_multinomial), ou seja, $\frac{(N+M+P)!}{N!*M!*P!}$.

- Um caso particular de caminho limitado, onde não seria possível passar "por cima" da diagonal principal do reticulado, ou seja, onde o número de passos para a "direita" é maior que o número de passos para baixo, torna o problema em encontrar o respectivo [Número de Catalan](https://proceedings.sbmac.emnuvens.com.br/sbmac/article/download/2240/2258/4494), em particular, $\frac{1}{N+1}\binom{2N}{N}$.

- Se você pudesse se mover diagonalmente, e não apenas para a direita e baixo, a solução geraria a sequência dos [Números de Delannoy](https://en.wikipedia.org/wiki/Delannoy_number).

- Se cada caminho no reticulado for associado a um custo, você cai num problema de [Problema (Soma) de Caminho Mínimo](https://www.ime.usp.br/~pf/algoritmos_para_grafos/aulas/cheapestpaths.html), outro clássico na ciência da computação.