---
layout: post
title: Estatísticas "oficiais" são ineficientes
modified:
categories: blog
tags: [política, papers, google]
date: 2017-03-01T11:00:07-02:00
update: 2017-03-10T12:00
---

# Prefácio: Futurologia é tipo vender fiado

Eu tenho problemas com futurólogos e adivinhadores. Quando você dá muito peso às especulações infundadas - suas ou dos outros, qualquer balela pode se tornar crível. Quando o Ray Kurzweil diz que a humanidade está _se aproximando da imortalidade_, meu ceticismo é o mesmo de quando eu converso mentalmente com meu gato e ele me diz que não vai encher o saco da outra gata. A diferença é que o senhor Kurzweil tem um excelente emprego no Google, vende livro que nem água, e eu fico aqui escrevendo sobre isso.

# Contradizendo o prefácio

Mas eu não torço o nariz pra todo mundo que se presta à futurologia, ainda que velada. O Chris Anderson, editor da Revista Wired, publicou em 2008 (!) um editorial chamado [The End of Theory: The Data Deluge Makes the Scientific Method Obsolete](https://www.wired.com/2008/06/pb-theory/). O texto do cara começa bem, com uma citação maravilhosa creditada ao grande George Box há quase 40 anos: "_All models are wrong, but some are useful_". "Todos os modelos são errados, mas alguns são úteis", que é como eu traduzo geralmente.

Modelos são abstrações da _natureza_ (em sentido amplo) que, via de regra, simplificam fenômenos em nome de sua interpretabilidade. Quando a gente resolve problemas de mecânica em física e despreza atrito, resistência do ar, dimensões dos corpos envolvidos etc. é basicamente isso que estamos fazendo: sabemos que todas essas coisas estão presentes na _natureza_ mas, para efeitos práticos, pode ser que sejam desprezíveis. Quando um engenheiro vai projetar uma construção ou um dispositivo pode ser que esses fatores (e outros) tenham influência marcante e não devam ser desconsiderados.

Modelos estatísticos são categorias de modelos matemáticos onde (geralmente) nós temos um par composto pelo _espaço amostral_ - alturas são números não-negativos, o saldo da minha conta bancária é um número entre menos infinito e zero, o arremesso de um dado de seis lados tem como resultados possíveis os inteiros {1,2,3,4,5,6} etc. - e uma distribuição de probabilidade. Quando o Chris Anderson afirma que o volume gigantesco de dados tornou a ciência obsoleta, ele está certo e errado. Errado porquê, como era de se esperar num _post_ onde eu critico a futurologia, isso é uma especulação de quem não tem lá muito conhecimento sobre metodologia científica fora do que ele mesmo cita no artigo sobre correlação espúria ou causalidade, e certo pois realmente o esforço para conseguir lidar com _volumes enormes de dados_ move a ciência há algumas décadas.

Indo um pouco mais além desse argumento, algo que me preocupa como estatístico de formação é a obtenção de estatísticas oficiais. A não ser que você seja alguém que acredite que o governo simplesmente não deva existir (mais sobre isso depois) a gente tem um problema administrativo grave quando o assunto são estatísticas oficiais - caras, demoradas/defasadas, relegadas a segundo, terceiro, quarto plano de acordo com os ventos políticos, manipuladas pelo miasma do chorume partidário - a verdade é que _bons_ dados devem informar decisões administrativas dos governos como critérios objetivos.

# Deeply profoundly much learning

No fim de fevereiro li um _paper_ interessante no arXiv, cujo título: [_Using Deep Learning and Google Street View to Estimate the Demographic Makeup of the US_](https://arxiv.org/abs/1702.06683), me despertou menos interesse que esse trecho do _abstract_ da parada:

>The United States spends more than $1B each year on initiatives such as the American Community Survey (ACS), a labor-intensive door-to-door study that measures statistics relating to race, gender, education, occupation, unemployment, and other demographic factors. Although a comprehensive source of data, the lag between demographic changes and their appearance in the ACS can exceed half a decade

Os caras usaram dados do _Street View_ e aplicaram técnicas de _Deep Learning_ (_Deep Learning_ nada mais é que a tentativa de emplacar mais um _buzzword_ pra algoritmos de aprendizagem automática, ao invés de chamar de Modelos Hierárquicos de Alto Nível, algo assim) para estimar, a partir dos carros observados no _Street View_, características demográficas das populações e a preferência partidária entre Democratas e Republicanos.

O tipo do carro foi usado um _proxy_ - uma variável que não o que temos interesse primordial mas é mais fácil de medir. Cito um parágrafo dos resultados:

> For example, the vehicular feature that was most strongly associated with Democratic precincts was sedans, whereas Republican precincts were most strongly associated with extended-cab pickup trucks (a truck with rear-seat access). We found that by driving through a city for 15 minutes while counting sedans and pickup trucks, it is possible to reliably determine whether the city voted Democratic or Republican: if there are more sedans, it probably voted Democrat (88% chance) and if there are more pickup trucks, it probably voted Republican (82% chance)

_Cientificamente_ falando, parece balela né? Não há qualquer substancialidade no artigo pra sustentar a conclusão. Se algum administrador público citasse algo nesse sentido como justificativa pra qualquer política pública que fosse, eu seria o primeiro a jogar uma couve-de-bruxelas. Por outro lado, me pergunto se esse tipo de análise é __inteiramente__ inútil: é relativamente baratas e rápidas, ainda que com um óbvio _trade-off_ em relação à acurácia. Entendo que estas técnicas, ainda que mal vistas na perspectiva metodológica, não-verificáveis, não-falseáveis etc. possam ter utilidade em outras áreas como negócios (_marketing_) e até mesmo na política no contexto das campanhas. O custo de oportunidade ao mandar um _folder_ do Trump pra um dono de pick-up gigante que por algum motivo é um progressista pode parecer pequeno frente à enorme possibilidade de se tratar de alguém reacionário.

Na verdade, o estudo da (possível) correlação entre o automóvel que a pessoa possui e sua posição política não é coisa recente: [_Your Car: Politics on Wheels_](http://www.nytimes.com/2005/04/01/automobiles/your-car-politics-on-wheels.html?_r=0) é um artigo de 2005 publicado no NY Times que apresenta uma perspectiva de mercado dessa análise, inclusive citando o fato do Partido Republicano ter contratado consultoria para uma análise nesse sentido para as eleições de 2006.

__Atualização__: O Ian White, do _blog_ Dataconomy [escreveu sobre esse artigo hoje](Your Car: Politics on Wheels) 
