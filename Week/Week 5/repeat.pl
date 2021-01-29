get_answer(Ans):- write('Enter answer to question: '), nl,
	repeat, write('answer yes or no: '),
	read(Ans), valid(Ans),
	write('Answer is'), write(Ans), nl.
	
valid(yes). 
valid(no).

/*dog*/
dog(fido).
dog(fred).
dog(jonathan).
alldogs:-dog(X), write(X), write(' is a dog'), nl, fail.