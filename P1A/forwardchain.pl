:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 200, xfy, and).

demo:- new_derived_fact( P), !, % A new fact
 assert(fact(P)),
 demo.
demo:- nl, write( 'Boa viagem! O melhor meio de transporte para a sua viagem e:'), nl.


new_derived_fact( Concl) :-
 if Cond then Concl, % A rule
 \+ fact( Concl), % Rule's conclusion not yet a fact
 composed_fact( Cond). % Condition true?

composed_fact( Cond) :- fact( Cond). % Simple fact
composed_fact( Cond1 and Cond2) :-
 composed_fact( Cond1),
 composed_fact( Cond2). % Both conjuncts true
composed_fact( Cond1 or Cond2) :-
 composed_fact( Cond1)
 ;
 composed_fact( Cond2).