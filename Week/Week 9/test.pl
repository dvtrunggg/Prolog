addWordToDatabase(W) :-
  word(W, X),
  retract(word(W, X)),
  Y is X + 1,
  assert( word(W, Y) ), !.

addWordToDatabase(W) :-
  assert( word(W, 1) ), !.

readPlainText(X) :-
  open(X, read, Stream),
  readWords(Stream),
  close(Stream).

readWords(InStream) :-
  \+ at_end_of_stream(InStream),
  readWord(InStream, W),
  write(W), nl,
  addWordToDatabase(W),
  readWords(InStream).

readWord(InStream, W) :-
  get_code(InStream, Char),
  checkCharAndReadRest(Char, Chars, InStream),
  atom_codes(W, Chars).

checkCharAndReadRest(10, [], _) :- !.

checkCharAndReadRest(32, [], _) :- !.

checkCharAndReadRest(-1, [], _) :- !.

checkCharAndReadRest(end_of_file, [], _) :- !.

checkCharAndReadRest(Char, [Char | Chars] , InStream) :-
  get_code(InStream, NextChar),
  checkCharAndReadRest(NextChar, Chars, InStream).
