loop(0).
loop(N):-N>0, write(N),nl,N1 is N-1,loop(N1).

