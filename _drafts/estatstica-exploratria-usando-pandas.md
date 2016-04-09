---
layout: post
title: Estatística Exploratória usando Pandas e Python
categories: articles
excerpt: "Não, não estamos falando de rinha científica de animais exóticos"
tags: [Python, Pandas, data.gov]
---
# Introdução

Não há consenso sobre quantas linguagens de programação uma pessoa deve saber, e uma variável importante na resposta dessa pergunta seria "__Que tipo de programador a pessoa de quem estamos falando é?__". Um _hobbysta_, um engenheiro de _software_, um físico ou um cientista de dados/estatístico têm necessidades diferentes e podem obter ganhos bem discrepantes após dedicare-se durante inúmeras horas a fio de bunda-cadeira e aprenderem uma segunda, terceira, quarta ou n-ésima linguagem de programação.

Além da questão de conhecer outras implementações, os ganhos podem vir com o aprendizado de outros _paradigmas_ de programação: [este quadro aqui](https://en.wikipedia.org/wiki/File:Programming_paradigms.svg), de autoria do professor Peter Van Roy da _Catholic University of Louvain_, descreve um esquema de LPs e até abaixa a pressão.

A questão é que há um _trade-off_ um pouco nebuloso na minha opinião: aprendizado é ótimo, mas os tais ganhos são irrisórios a partir de um certo ponto. Como estudante de graduação em Estatística, sou exposto majoritariamente a dois _idiomas_ de Análise de Dados que não conversam muito bem entre si: O [R](http://r-project.org) com sua versatilidade inconsistente e o [SAS](http://sas.com), clássico, jurássico mas muito seguro e rápido. O SAS tem um _lobby_ poderoso na Academia e, a bem da verdade, é realmente um ambiente muito completo, mas já dá sinais de cansaço ante a ofensivas do _R_, mesmo reagindo com suas recentes versões [University](http://www.sas.com/pt_br/software/university-edition.html) e [SAS Studio](https://odamid.oda.sas.com/SASLogon/login?service=https%3A%2F%2Fodamid.oda.sas.com%2FSASODAControlCenter%2Fj_spring_cas_security_check), online e na nuvem. Ontem mesmo, tivemos aula de Análise de Regressão Linear no laboratório, e como a licença do bendito havia expirado três dias atrás, tivemos de usar o tal SAS na nuvem: utilizável mas rudimentar.

Então o objetivo aqui é apresentar uma opção robusta, versátil, completa e _piú o meno_ consolidada para Análise (Exploratória) de Dados, o Python, em particular sua biblioteca Pandas. Os dados serão obtidos do [data.gov](http://data.gov), portal de Dados Abertos do Governo dos Estados Unidos. Aliás, Dados Abertos será tema de outro artigo que espero subir em breve aqui.

# _Paiton_

O Python foi pensado e projetado durante a década de 80 (!) pelo holandês [Guido van Rossum](https://en.wikipedia.org/wiki/Guido_van_Rossum). Em 2000, com o _release_ da sua versão 2.0, o Python começou a ganhar momento e credibilidade. Mercado mesmo. Atualmente o Python é a [4a linguagem de programação mais popular do mundo segundo o _ranking_ TIOBE](http://www.tiobe.com/tiobe_index). Você pode aprender mais sobre o que é o Python em seus verbetes da wikipedia: <a href="https://en.wikipedia.org/wiki/Python_(programming_language)">inglês</a> e [português](https://pt.wikipedia.org/wiki/Python) e em bilhões de recursos internet a dentro.

A certeza é de que o Python é uma linguagem de propósito geral muito presente em diversas aplicações, seu código é fácil de escrever e de ler, e é livre. Isso pesa muito, você baixa um interpretador com algumas dezenas de MBs e já está pronto para programar. Não é a toa que o Python é usado em muitos cursos de programação disponíveis _online_, e programação desde _"Hello World"_ até _Natural Language Processing_ e Aprendizagem Automática em geral. Então eu espero ser capaz de te dar um gostinho aqui nesse artigo, que você possa brincar com Python nas suas análises de dados.

Não sou especialista em Python, e muito menos em _Analítica_, mas entendo que aquele tal _ganho_ que falei alguns parágrafos acima seja muito positivo para que você aprenda a _falar_ Python. Espero que você já tenha um conhecimento sobre o que é uma Análise Exploratória de Dados, bem como já saiba alguma coisa de programação, não necessariamente em Python. Se você quiser praticidade para já começar a programar de cara, pode baixar o [pacote de computação científica Anaconda](https://www.continuum.io/downloads), que já inclui o Python 3 e as bibliotecas usadas aqui, ou pode instalar o [Python 3](http://python.org) e as bibliotecas [Pandas](http://pandas.pydata.org), [ggplot para Python](http://ggplot.yhathq.com/) e [matplotlib](http://matplotlib.org/) _no braço_. A segunda opção é somente para corajosos, ainda mais quando você está em Windows.

# Mão na massa

Escolhi o _dataset_ [Commuter Survey](http://catalog.data.gov/dataset/commuter-survey-2014), publicado pelo _USAID_ em 2014 e que mensurou a _pegada de carbono_ dos funcionários do Governo Federal dos EUA através do _proxy_ "Modal de Comutação".
