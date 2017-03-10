---
layout: post
title: Problemas nos estudos com Ressonância Magnética Funcional
date: 2016-12-14T11:00:07-02:00
modified:
categories: blog
excerpt: "É importante avaliar as suposições do modelo, ajustar para múltiplos testes etc."
tags: [Estatística Espacial, comentário, faiou]
---

Muito bafafá nos últimos meses sobre o tema. Esse bafafá culminou num [paper](http://www.pnas.org/content/113/28/7900.full) que retrata um cenário pouco favorável para o fMRI como o conhecemos: os autores detectaram uma taxa de 70% de falsos positivos!

Não é minha especialidade, se é que eu tenho uma, mas imagino que estes estudos tenham alguns problemas tradicionais que eu encontro por aí sempre que técnicas são criticadas:

* __Não há ajuste para múltiplas comparações__: muito possivelmente esses conjuntos de dados sofrem milhares, dezenas de milhares, centenas de milhares de testes.  

* __As suposições dos modelos não são validadas__: nem precisa falar nada né. A gente aprende apanhando nos trabalho de regressão e modelos lineares em geral a sempre verificar esses lances.

* __Pescar dados pra conseguiu publicar__: também não precisa falar nada. Numa cultura científica que valoriza desproporcionalmente resultados _positivos_, isso é mais do que comum. Dá pra criticar também a pesca de resultados significativos pescando contrastes, comparações etc.

* __Estruturas de correlação espacial que não são explicadas de maneira adequada__: como a correspondência _voxel_ <=> neurônio nem sempre é tão cristalina, pode ser que estas correlações não sejam sempre válidas ou tão intensas.


Esses estudos de fMRI não são criticados de hoje, inclusive tem aquele relato anedótico que muitos de nós conhecemos do [salmão que _pensava_ ao ver fotos](http://prefrontal.org/files/posters/Bennett-Salmon-2009.pdf). O único problema é que o salmão foi comprado no mercado já morto _da silva_.

Claro outros falaram muito melhor que eu sobre isso: [Andrew Gelman](http://andrewgelman.com/2016/12/10/fmri-clusterf/) e [o Guillaume Flandin, autor do SPM, um dos _softwares_ de neuroimagem mais utilizados e criticados](https://arxiv.org/pdf/1606.08199v1.pdf).
