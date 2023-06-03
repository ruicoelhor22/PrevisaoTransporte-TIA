caminhobaratomenostempo(Origem, Destino, Caminho, CustoTotal, TempoTotal, Transp) :-
    caminho(Origem, Destino, PercursoReverso),
    reverse(PercursoReverso, Caminho),
    menorcustotempo(Origem, Destino, Caminho, CustoTotal, TempoTotal, Transp).

menorcustotempo(Origem, Destino, Caminho, CustoTotal, TempoTotal, Transportes) :-
    calcularcustotempo(Caminho, Transportes, CustoTotal, TempoTotal),
    \+ (dist(Origem, Destino, _, Tempo, Custo),
        calcularcustotempo(Caminho, _, OutroCustoTotal, OutroTempoTotal),
        OutroCustoTotal < CustoTotal,
        OutroCustoTempo is OutroCustoTotal * OutroTempoTotal,
        CustoTempo is Custo * Tempo,
        OutroCustoTempo < CustoTempo).

caminho(X, Z, Caminho) :- caminho(X, Z, [X], Caminho).
caminho(X, X, Caminho, Caminho).
caminho(X, Z, Visitado, Caminho) :-
    arco(X, LugarVerificar),
    \+ member(LugarVerificar, Visitado),
    caminho(LugarVerificar, Z, [LugarVerificar | Visitado], Caminho).

calcularcustotempo([_], [], 0, 0).
calcularcustotempo([Origem, Destino | OutrosDestinos], [Transporte | OutrosTransp], CustoTotal, TempoTotal) :-
    menorcustotempotransporte(Origem, Destino, Transporte, CustoParcial, Tempo),
    calcularcustotempo([Destino | OutrosDestinos], OutrosTransp, CustoParcial2, TempoParcial),
    CustoTotal is CustoParcial + CustoParcial2,
    TempoTotal is Tempo + TempoParcial.

menorcustotempotransporte(Origem, Destino, Transporte, Custo, Tempo) :-
    dist(Origem, Destino, Transporte, Tempo, Custo),
    \+ (dist(Origem, Destino, OutroTransporte, OutroTempo, OutroCusto),
        OutroTransporte \= Transporte,
        OutroCustoTotal is OutroCusto * OutroTempo,
        CustoTotal is Custo * Tempo,
        OutroCustoTotal < CustoTotal).
