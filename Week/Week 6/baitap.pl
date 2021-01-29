
/* support*/
/*H est premier élément de la liste*/
first([H|_], H).  

/*X est dernier élément de la liste*/
last([X], X). 
last([_|Z], X) :- last(Z, X). 


/*question 1*/
tous_a(Liste):- not(member(a, Liste)).

/*question 3*/
nieme(Index, L,  Element):- nth0(Index, L, Element). /*index de liste commence de 0 à lengeur - 1*/

/*question 4 slide 38*/
double(List) :- append(X,X,List).

/*question 4 slide 39*/
palindrome(X) :- reverse(X, Y), Y = X.

/*question 5 slide 38*/
aplatir(L, L2) :- flatten(L, L2).

/*question 5 slide 39*/
premier_dernier(L,_):- length(L, X), X < 2, false.
premier_dernier(L, R) :- first(L, First), last(L, Last),
						 delete(L, First, L1), delete(L1, Last, R).

/*question 7 slide 40*/

echanger(L, LR) :- first(L, First), last(L, Last),
				delete(L, First, L1), delete(L1, Last, R),
				append([Last], R, LR1), append(LR1, [First], LR).
				
					


