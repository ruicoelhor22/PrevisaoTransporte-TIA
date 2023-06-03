caminhobarato(X, Y, C, CT, Transp) :-
    caminho(X, Y, PercursoReverso),
    reverse(PercursoReverso, C),
    menorcusto(X, Y, C, CT, Transp).

menorcusto(Origem, Destino, Caminho, CustoTotal, Transportes) :-
    calcularcusto(Caminho, Transportes, CustoTotal),
    \+ (dist(Origem, Destino, _, _, Custo),
        Custo < CustoTotal).

caminho(X, Z, Caminho) :- caminho(X, Z, [X], Caminho).
caminho(X, X, Caminho, Caminho).
caminho(X, Z, Visitado, Caminho) :-
    arco(X, LugarVerificar),
    \+ member(LugarVerificar, Visitado),
    caminho(LugarVerificar, Z, [LugarVerificar | Visitado], Caminho).

calcularcusto([_], [], 0).
calcularcusto([Origem, Destino | OutrosDestinos], [Transporte | OutrosTransp], CustoTotal) :-
    menorcustotransp(Origem, Destino, Transporte, CustoParcial),
    calcularcusto([Destino | OutrosDestinos], OutrosTransp, CustoParcial2),
    CustoTotal is CustoParcial + CustoParcial2.

menorcustotransp(Origem, Destino, Transporte, Custo) :-
    dist(Origem, Destino, Transporte, _, Custo),
    \+ (dist(Origem, Destino, OutroTransp, _, OutroCusto),
        OutroTransp \= Transporte,
        OutroCusto < Custo).
