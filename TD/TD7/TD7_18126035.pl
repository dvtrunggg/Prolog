/*bài 1 slide 13*/
scalarMult(_,[],[]).
scalarMult(X, [T|Q], [T1|M]):- T1 is X*T, scalarMult(X, Q, M).

/*bài 2 slide 13*/
dotProduct([], [], 0).

dotProduct([T1 | Q1], [T2 | Q2], R) :- 
		dotProduct(Q1, Q2, RQ),
		R is (T1 * T2) + RQ.

/*bài 3 slide 13*/
puissant(_,0,1).
puissant(X,Y,Z):- Y >  0, !, Y1 is Y-1, puissant(X,Y1,Z1), Z is X * Z1.

/*bài 3 slide 14*/
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, R):-N >1, X1 is N-1, X2 is N-2, fibonacci(X1, R1), fibonacci(X2, R2), R is R1 + R2.

/*hàm support*/
even(X) :- 
  	Y is mod(X, 2),       
  	Y =:= 0.

odd(X) :-              
  	Y is X + 1,
  	even(Y).


/*bài 4 slide 14*/
somme_des_impairs(0, []).      
somme_des_impairs(X, [T | Q]) :- odd(T), somme_des_impairs(Y, Q), X is Y + T.
somme_des_impairs(X, [T | Q]) :- even(T), somme_des_impairs(X, Q).

/*bài 5 slide 14*/

somme_des_pairs(0, []).      
somme_des_pairs(X, [T | Q]) :- even(T), somme_des_pairs(Y, Q), 
  	X is Y + T.
somme_des_pairs(X, [T | Q]) :- odd(T),somme_des_pairs(X, Q). 


/*bài 6 slide 14*/
nombre_des_pairs([], 0).
nombre_des_pairs([T|Q], N):-nombre_des_pairs(Q, N1), even(T), N is N1+1.
nombre_des_pairs([T|Q], N):-nombre_des_pairs(Q, N1), odd(T), N is N1.