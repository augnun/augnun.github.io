---
layout: post
title: Colormaps
date: 2016-02-12T09:59:46-02:00
categories: blog
excerpt: "A comunidade open source se supera novamente"
tags: [Python, open source, matplotlib, SciPy, MATLAB]
---
Navegando no reddit, achei um [post interessante](https://www.reddit.com/r/Python/comments/45c5qf/python_plots_used_in_gravitational_waves/) sobre como utilizaram Python para escrever o _paper_ [Observation of Gravitational Waves from a Binary Black Hole Merger](https://journals.aps.org/prl/pdf/10.1103/PhysRevLett.116.061102), mais conhecido como o _paper_ que provou que Einstein estava certo sobre a Relatividade.

Como física não é meu forte, me abstenho de comentar, mas nos comentários do _post_ uma coisa me chamou a atenção, um vídeo da [SciPy 2015](http://scipy2015.scipy.org/ehome/index.php?eventid=115969&), particularmente a apresentação de [Nathaniel Smith](https://github.com/njsmith) sobre os problemas do _colormap_ _default_ do matplotlib, o _status quo_ em gráficos quando se fala em python para ciência.

<iframe width="560" height="315" src="https://www.youtube.com/embed/xAoljeRJ3lU?list=PLYx7XA2nY5Gcpabmu61kKcToLz0FapmHu" frameborder="0" allowfullscreen></iframe>

# O que são Colormaps

  Houve um período em que tudo o que se fazia em computação científica era de alguma forma derivado de programas proprietários, como é o caso do MATLAB, ainda imensamente famoso e relevante. A aplicação mais comum de colormaps na ciência é em transformações de dados, em particular, sabemos que uma matriz é uma representação adequada para uma _plano de imagem_: a tela dos nossos computadores, grandes ou pequenos, é o exemplo mais comum.

  Grosso modo, quando você tira uma foto, a luz atinge os milhares de sensores da sua câmera digital em diferentes níveis. O que acontece depois disso (novamente, _grosso modo_) é que o processador da câmera transforma a leitura dos sensores em uma escala de cores chamada RGB, de __R__ ed, __G__ reen, __B__ lue. Cada minúsculo sensorzinho da sua câmera reporta um índice RGB para a luz que o atingiu. Estes sensores são dispostos em formato retangular, o que os torna perfeitos para representar suas leituras como objetos matemáticos que são amados e odiados em igual medida: __matrizes__.

  Um colormap não é exatamente isso, mas é quase. Gostou né? _Colormaps_ são muito úteis quando estamos estudando fenômenos que não são facilmente distinguíveis no espectro visível da luz, como por exemplo em astrofotografia, ou quando o excesso de informação pode gerar confusão, como em medicina por imagem. No primeiro exemplo, quando você olha pro céu, seja com um telescópio (óptico) milionário ou com seus olhinhos, vê apenas um breu e alguns astros aqui e ali. No entanto, a ciência já sabe que há uma infinidade de efeitos de radiação na atmosfera, mesmo sem conseguir vê-la. Na medicina, quando você precisa visualizar uma lesão visceral ou uma fratura _complexa_, você precisa realçar adequadamente o _alvo_ do seu estudo.

  Eventualmente eu espero fazer um _post_ mais detalhado sobre processamento de imagens, eu acho as questões de dimensionalidade, os __problemas__ de dimensionalidade no caso, muito interessantes. Mas sigamos.

# O que deu errado, e como a comunidade cuidou disso

  Ficou ruim essa explicação né? O próprio Nathaniel Smith explica no vídeo com muita mais propriedade do que eu, ainda assim uma explicação _ad hoc_ (aka acoxambrada), o que são _colormaps_. O problema deles na perspectiva da comunidade científica é que, o _colormap_ _jet_, padrão que vem sendo utilizado desde o MATLAB, é [horrível](https://jakevdp.github.io/blog/2014/10/16/how-bad-is-your-colormap/).

  A própria Mathworks reconheceu isto e disponibilizou outras opções de colormaps pro MATLAB, mas claro que elas recaem sob a óptica (rá!) de propriedade intelectual da empresa e eles não deixaram uns _meninos buchudos_ usarem. Então esse cara aí do vídeo desenvolveu outro _colormap_, [Viridis](http://betterfigures.org/2015/07/10/a-welcome-development-for-matplotlib/), que será introduzido na versão 2.0 do matplolib.
