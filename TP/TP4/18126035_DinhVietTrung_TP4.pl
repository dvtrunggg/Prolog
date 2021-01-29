/*Exercice 1*/
calcule(Input, Output):- open(Input, read, Stream), 
				read_file(Stream, Lines), 
				close(Stream), 
				write_output(Output, Lines),!.

write_output(Output, Lines):- open(Output, write, Stream), 
							write_line(Stream, Lines), 
							close(Stream).

write_line(_,[]):-!.
write_line(Stream, [H|T]):- print(H), nl, 
							write(Stream, H), nl(Stream), 
							write_line(Stream, T).


sommeListe([], 0).
sommeListe([H|T], S) :-  number_string(X, H), sommeListe(T, S1), S is X + S1.

read_file(Stream,[]) :- at_end_of_stream(Stream).
read_file(Stream,[H|T]) :- \+ at_end_of_stream(Stream), 
							read_line_to_codes(Stream, Ch),
							atom_codes(Tmp, Ch), split_string(Tmp," ","", S), 
							sommeListe(S, H), read_file(Stream, T), !.






/*Exercice 2*/
s --> sn(N), sv(N).

sn(N) --> noun(N).
sn(N) --> dt(N), noun(N).
sn(N) --> dt(N), s_adj(N, _), noun(_).

sv(N) --> vi(N).
sv(N) --> vt(N), sn(_).

vi(N) --> [Word], {lexique(Word, vi, N)}.
vt(N) --> [Word], {lexique(Word, vt, N)}.

noun(N) --> [Word], {lexique(Word, noun, N)}.
dt(N) --> [Word], {lexique(Word, dt, N)}.

adj(N, adj1) --> [Word], {lexique(Word, adj1, N)}.
adj(N, adj2) --> [Word], {lexique(Word, adj2, N)}.

s_adj(N, X) --> adj(N, X).
s_adj(N, X) --> adj(N, X), s_adj(_, X).

lexique(large, adj1, consonant).
lexique(small, adj2, consonant).

lexique(brown, adj1, consonant).
lexique(orange, adj1, vowel).
lexique(green, adj1, consonant).
lexique(blue, adj1, consonant).

lexique(brown, adj2, consonant).
lexique(orange, adj2, vowel).
lexique(green, adj2, consonant).
lexique(blue, adj2, consonant).

lexique(sat, vi, _).
lexique(saw, vt, _).
lexique(hears, vt, _).
lexique(took, vt, _).
lexique(sees, vt, _).
lexique(will_see, vt, _).

lexique(cat, noun, consonant).
lexique(mat, noun, consonant).
lexique(man, noun, consonant).
lexique(boy, noun, consonant).
lexique(dog, noun, consonant).

lexique(the, dt, _).
lexique(a, dt, consonant).
lexique(an, dt, vowel).


toAtom([], []).
toAtom([T|H], S):-atom_string(X, T), toAtom(H, S1), append([X], S1, S).

grammaire(X):- open(X, read, Stream), 
		   readFile(Stream, _), 
		   close(Stream).
		   
readFile(Stream, []):-at_end_of_stream(Stream).
readFile(Stream, [_|Q]):- 
				\+at_end_of_stream(Stream), read_line_to_codes(Stream, T),
			    atom_codes(Tmp, T), 
			    split_string(Tmp," ", ".", S),
			    toAtom(S, X),nl,
			    write(X),nl,
			    (s(X, [])->write("True"); write("False")),
			    readFile(Stream, Q), !.
				
				
				