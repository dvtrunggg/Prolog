/*Exercice 1*/
alterner([],[X],[X]).
alterner([X],[],[X]).
/*H et T est Head et Tail*/
alterner([H1|T1],List,[H1|T2]):-alterner(List,T1,T2).


/*Exercice 2*/
path(v1, v3, 5).
path(v1, v2, 3).
path(v1, v7, 5).
path(v1, v6, 25).
path(v1, v4, 13).

path(v2, v7, 17).

path(v3, v4, 15).

path(v4, v6, 2).
path(v4, v2, 17).

path(v7, v6, 15).

traverser_3arg(X,Y,Z):- path(X,Y,Z), write(X), write(' -> '), write(Y), write(' : '), write(Z), nl.
traverser_3arg(X,Y,Total):-path(X,Z,T), 
						write(X), write('->'), write(Z), write(' : '), write(T), nl,
						traverser_3arg(Z,Y, T1), Total is T1 + T.


traverser(X,Y):-traverser_3arg(X,Y,Z), write('Total : '), write(Z).