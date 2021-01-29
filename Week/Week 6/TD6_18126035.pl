
/*question 1*/
tous_a(Liste):- not(member(a, Liste)).


/*question 2 */
remplacer_a_b_c([],[]).
remplacer_a_b_c([a|Q1], [b|Q2]):-remplacer_a_b_c(Q1, Q2).
remplacer_a_b_c([b|Q1], [c|Q2]):-remplacer_a_b_c(Q1, Q2).
remplacer_a_b_c([c|Q1], [a|Q2]):-remplacer_a_b_c(Q1, Q2).


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
premier_dernier(L, R) :- first([H|_], H), 			/*H est premier élément de la liste*/
						first(L, First), last(L, Last),
						delete(L, First, L1), delete(L1, Last, R).


/*question 6*/

dernier([X],X).
dernier([_|Q],X) :- dernier(Q,X).

/* version 2 de question 6: */
/*
first([H|_], H).
dernier(L, X):-reverse(L, LR), first(LR, X).
*/

/*question 7 slide 40*/

echanger(L, LR) :- first([H|_], H),
				first(L, First), last(L, Last),
				delete(L, First, L1), delete(L1, Last, R),
				append([Last], R, LR1), append(LR1, [First], LR).
				
/* version 2 de question 7 */					
/*echanger(L, R):- append([T|Q], [D], L), append([D|Q], [T], R).*/


/* question 8 */
bulle(X,[],[],X).
bulle(X,[Y|Q],[Y|QR],Max):- X > Y,

bulle(X,Q,QR,Max).

bulle(X,[Y|Q],[X|QR],Max):- X =< Y,

bulle(Y,Q,QR,Max).

tri_b([],Acc,Acc).
tri_b([T|Q],Acc,R):-bulle(T,Q,QR,Max),
tri_b(QR,[Max|Acc],R).

tri_bulle(L,R):-tri_b(L,[],R).
