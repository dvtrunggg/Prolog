main:- open('output.txt', write, X),
	tab(X, 13), write(X, un), nl(X),
	tab(X, 6), write(X, deux), tab(X, 10), write(X, trois), nl(X),
	write(X, quatre), tab(X, 7), write(X, cingq), tab(X, 7), write(X, quatre),
	close(X).

	
