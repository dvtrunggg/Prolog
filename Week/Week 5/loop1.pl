loop(0).
loop(N):-N>0, N1 is N-1 , loop(N1) , write(N).

output_values(Last, Last).
output_values(First,Last):-First < Last, write(First), nl,
	N is First + 1, output_values(N,Last).


sumto(0,0).
/* hoặc có thể dùng: sumto(N,S):- N is 0, S is 0. */
sumto(N,S) :- N > 0, N1 is N - 1, sumto(N1, S1), S is S1 + N.

/*lũy thừa*/
writesquares(1):-write('1^2 = 1'), nl.
writesquares(N):- N>1, N1 is N - 1, writesquares(N1), N2 is N * N, 
	write(N),write('^2 = '), write(N2), nl.