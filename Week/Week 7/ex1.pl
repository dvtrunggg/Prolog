accLongeur([], L, L).
accLongeur([_|Q], Acc, L):-Acc1 is Acc+1, accLongeur(Q, Acc1, L).

min([T], T).

/* min của Q là X1 nếu X1 > số T , return min của nó là T (=X1)*/
min([T|Q], X) :-min(Q, X1), X1 > T, X is T.
/*else*/
min([T|Q], X):-min(Q,X1), X1=< T, X is X1.

/*dùng 3 arg (arg phụ)*/

/*return rỗng nếu nó rỗng:))*/
min_([], A, A). 
min_([T|Q], A, M):-A >= T, min_(Q, T, M).
min_([T|Q], A, M):-A<T, min_(Q,A,M).
minA([T|Q], M):-min_(Q,T,M).
