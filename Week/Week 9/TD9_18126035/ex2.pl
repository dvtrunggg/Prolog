main:- open('houses.txt',read,S),
        get_code(S,X),
        readLine(X,S,L),
        print(L),
       	close(S).

readLine(-1, _, []).
readLine(N, Mots, [N1|N2]):- checkCharAndReadRest(N, Chars, Mots), atom_codes(N1, Chars), get_code(Mots,Y), readLine(Y,Mots,N2).

checkCharAndReadRest(32, [], _):- !.
checkCharAndReadRest(10, [], _):- !.
checkCharAndReadRest(44, [], _):- !.
checkCharAndReadRest(46, [], _):- !.
checkCharAndReadRest(9, [], _):- !.
checkCharAndReadRest(-1, [], _):- !.
checkCharAndReadRest(Char, [Char|N2], S):- get_code(S, NextChar), checkCharAndReadRest(NextChar,N2,S).

print([]).
print([X|O]):- X \= '', writeln(X), print(O).
print([X|O]):- X == '', print(O).