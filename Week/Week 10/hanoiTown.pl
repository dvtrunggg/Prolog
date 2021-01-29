deplacer(1,A,B,_):-write('Deplacer le disque superieur de '), 
    write(A), 
    write(' vers '), 
    write(B), 
    nl. 
deplacer(N,A,B,C):- N>1, 
    M is N-1, 
    deplacer(M,A,C,B), 
    deplacer(1,A,B,_), 
    deplacer(M,C,B,A).  