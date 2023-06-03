:-dynamic(fact/1),
[baseconhecimento,inferencia].

menu:- nl,nl ,
		write('******************************************************************************************************'), nl,
		write('**					     Seja Bem vindo!                                        **'), nl,
		write('**                                                                                                  **'), nl,
		write('**                  Descubra qual o caminho mais barato e mais curto para a sua viagem!             **'), nl,
		write('**                                                                                                  **'), nl,
		write('******************************************************************************************************'), nl, nl,
		write('**   Menu:'), nl,
		write('**'), nl,
		write('**   1- Iniciar'), nl,
		write('**   2- Sair'), nl,nl,
		read(Y),
		avaliarEscolha(Y).

avaliarEscolha(1):- resultado.
avaliarEscolha(2):- write('Foi um prazer ajuda-lo!'), halt.
avaliarEscolha(other):- write('Introduza uma opcao valida, por favor comece de novo'), menu.

resultado:-
    writeln('Qual a origem da sua viagem?
    1 - Braga
    2 - Porto
    3 - Lisboa
    4 - Guimaraes
    5 - Viseu
    6 - Coimbra
    7 - Faro'),
    read(Origem),
    ((Origem =:= 1) -> LocalOrigem = 'braga';
     (Origem =:= 2) -> LocalOrigem = 'porto';
     (Origem =:= 3) -> LocalOrigem = 'lisboa';
     (Origem =:= 4) -> LocalOrigem = 'guimaraes';
     (Origem =:= 5) -> LocalOrigem = 'viseu';
     (Origem =:= 6) -> LocalOrigem = 'coimbra';
     (Origem =:= 7) -> LocalOrigem = 'faro';
     assert(fact(LocalOrigem))),
    writeln('Qual o destino da sua viagem?
    1 - Braga
    2 - Porto
    3 - Lisboa
    4 - Guimaraes
    5 - Viseu
    6 - Coimbra
    7 - Faro'),
    read(Destino),
    ((Destino =:= Origem) -> writeln('A origem nao pode ser igual ao destino!');
     (Destino =:= 1) -> LocalDestino = 'braga';
     (Destino =:= 2) -> LocalDestino = 'porto';
     (Destino =:= 3) -> LocalDestino = 'lisboa';
     (Destino =:= 4) -> LocalDestino = 'guimaraes';
     (Destino =:= 5) -> LocalDestino = 'viseu';
     (Destino =:= 6) -> LocalDestino = 'coimbra';
     (Destino =:= 7) -> LocalDestino = 'faro';
     assert(fact(LocalDestino))),


		write('******************************************************************************************************'), nl,
		write('**                                                                                                  **'), nl,
		write('**		  Resultado obtido | Caminho com menor custo e menor tempo:			    **'), nl,
		write('**                                                                                                  **'), nl,
		write('******************************************************************************************************'), nl, nl,nl,



    caminhobaratomenostempo(LocalOrigem,LocalDestino,Caminho,Custo,Tempo,Transporte),

    write('Cidade de Origem: '), writeln(LocalOrigem),
    write('Cidade de Destino: '),writeln(LocalDestino),
    write('Custo: '), write(Custo), writeln(' euros'),
    write('Tempo: '), write(Tempo), writeln(' minutos'),
    write('Cidades de passagem: '), writeln(Caminho),
    write('Transportes utilizados: '), writeln(Transporte).
