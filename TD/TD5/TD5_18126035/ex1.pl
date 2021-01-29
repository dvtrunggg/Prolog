
numeral(0).
numeral(succ(X)) :- numeral(X).


add(0,X,X).
add(succ(X), Y, Z) :- add(X, succ(Y), Z).

mul(0,X,0).
mul(succ(X), Y, Z) :- mult(X,Y,Z1), add(Z1,Y,Z).


plus_grand_que(succ(_), 0).
plus_grand_que(succ(X), succ(Y)):- plus_grand_que(X, Y).

moins_que(0, succ(_)).
moins_que(succ(X), succ(Y)):- moins_que(X, Y).

egale_a(0, 0).
egale_a(succ(X), succ(Y)):- egale_a(X, Y).

