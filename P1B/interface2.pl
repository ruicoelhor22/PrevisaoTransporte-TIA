:- dynamic(fact/1), [forwardchain2,baseConhecimento2,baseDados2].
menu:- retractall(fact(_)), 
	nl,nl , 	write('********************************************************************************************************'), nl,
				write('Este sistema sugere-lhe o melhor meio de transporte para a sua viagem. Antes de iniciar introduza o seu nome'),nl,
				read(X) ,nl,
				write('********************************************************************************************************'), nl,nl,
				write('  Prazer em estar a ajuda-lo/a Sr./a '), write(X) ,nl,nl,nl,
				write('********************************************************************************************************'), nl,
				write('**                                                                                                    **'), nl,			 
				write('**                    Descubra qual/quais o/s melhor/es meios de transporte para a sua viagem!        **'), nl,
				write('**                      Iremos fazer-lhe algumas perguntas para o/a ajudar na sua escolha!            **'), nl, 
				write('**                                                                                                    **'), nl,			 
				write('********************************************************************************************************'), nl,
				write('**   Menu:'), nl,
				write('**'), nl,
				write('**   1- Iniciar'), nl,
				write('**   2- Sair'), nl,nl,
				read(Y),
				(( Y == 1, questao1);
				(Y == 2, halt)).

questao1:-	write('********************************************************************************************************'), nl,
			write('**  Qual o local de origem da sua viagem? Destas opcoes, introduza o numero correspondente:'), nl,
			write('**'),nl,
			write('**  1 - Braga'), nl,
			write('**  2 - Porto'), nl,
			write('**  3 - Lisboa'), nl,
			write('**  4 - Faro'), nl,
			
			read(A1),
			((A1 == 1 , assert(fact(origem_braga)), questao2); 
			(A1 == 2 , assert(fact(origem_porto)), questao2);
			(A1 == 3 , assert(fact(origem_lisboa)), questao2);
			(A1 == 4 , assert(fact(origem_faro)), questao2)).
			

questao2:-  write('********************************************************************************************************'), nl,
			write('**  Qual o destino da sua viagem? Destas opcoes, introduza o numero correspondente:'), nl,
			write('**'),nl,
			write('**  1 - Braga'), nl,
			write('**  2 - Porto'), nl,
			write('**  3 - Lisboa'), nl,
			write('**  4 - Faro'), nl,

			read(A2),
			((A2 == 1 , assert(fact(destino_braga)), questao3); 
			(A2 == 2 , assert(fact(destino_porto)), questao3);
			(A2 == 3 , assert(fact(destino_lisboa)), questao3);
			(A2 == 4 , assert(fact(destino_faro)), questao3)).

questao3:-  write('********************************************************************************************************'), nl,
			write('**  Está disposto a gastar muito ou pouco? Destas opcoes, introduza o numero correspondente:'), nl,
			write('**'),nl,
			write('**  1 - Muito'), nl,
			write('**  2 - Pouco'), nl,
			
			read(A3),
			((A3 == 1 , assert(fact(custo_caro)), questao4); 
			(A3 == 2 , assert(fact(custo_barato)), questao4)).

questao4:-  write('********************************************************************************************************'), nl,
			write('**  Tem muito tempo disponivel? Destas opcoes, introduza o numero correspondente:'), nl,
			write('**  1 - Muito'), nl,
			write('**  2 - Pouco'), nl,
			
			read(A4),
		    ((A4 == 1, assert(fact(tempod_muito)), questao5);
			(A4 == 2, assert(fact(tempod_pouco)), questao5)).

questao5:-  write('********************************************************************************************************'), nl,
			write('**  Tem mobilidade reduzida? Destas opcoes, introduza o numero correspondente:'), nl,
			write('**  1 - Sim'), nl,
			write('**  2 - Nao'), nl,
			
			read(A5),
		    ((A5 == 1, assert(fact(mb_sim)), questao6);
			(A5 == 2, assert(fact(mb_nao)), questao6)).

questao6:- 	write('********************************************************************************************************'), nl,
			write('**  Tem carta de condução? Destas opcoes, introduza o numero correspondente:'), nl,
			write('**  1 - Sim'), nl,
			write('**  2 - Não'), nl,
			
			read(A6),
		    ((A6 == 1, assert(fact(conduz)), questao7);
			(A6 == 2, assert(fact(nconduz)), questao7)).
			
questao7:- 	write('********************************************************************************************************'), nl,
			write('**  Com quantas pessoas vai viajar? Destas opcoes, introduza o numero correspondente:'), nl,
			write('**  1 - Sozinho'), nl,
			write('**  2 - 1 a 4 pessoas'), nl,
			write('**  3 - Mais de 4 pessoas'), nl,
			
			read(A7),
		    ((A7 == 1, assert(fact(c_sozinho)), resultado);
			(A7 == 2, assert(fact(c_1a4)), resultado);
			(A7 == 3, assert(fact(c_mais4)), resultado)).
			
resultado :- 	nl,
				write('********************************************************************************************************'), nl,
				write('**                                                                                                    **'), nl,			 
				write('**                                         Resultado Obtido                                           **'), nl, 
				write('**                                                                                                    **'), nl,			 
				write('********************************************************************************************************'),
				
				demo,
				fact(Transp),
				resultado(Transp, L), nl,
				
				L = [(Tempo, Custo, Distancia, Localizacaopartida, Localizacaochegada, Horapartida, Horachegada)], nl,
				write('Tempo: '), write(Tempo), write(' minutos.'), nl,
				write('Custo: '), write(Custo), write(' euros.'), nl,
				write('Distancia: '), write(Distancia), write(' km.'), nl,
				write('Localizacao Partida: '), write(Localizacaopartida), nl,
				write('Localizacao Chegada: '), write(Localizacaochegada), nl,
				write('Hora de partida: ' ), write(Horapartida), nl,
				write('Hora de chegada: '), write(Horachegada).
				
			
				

resultado(Transp,L):-
					fact(Transp), fact(Origem), fact(Destino), 
					viagem(Origem, Destino, Transp, Tempo, Custo, Distancia, Localizacaopartida, Localizacaochegada, Horapartida, Horachegada),
					write(Transp),
					findall((Tempo, Custo, Distancia, Localizacaopartida, Localizacaochegada, Horapartida, Horachegada), 
						viagem(Origem, Destino, Transp, Tempo, Custo, Distancia, Localizacaopartida, Localizacaochegada, Horapartida, Horachegada), L).
					