mother(ann, henry).
mother(ann, mary).
mother(jane, mark).
mother(jane, francis).
mother(annette, jonathan).
mother(mary, bill).
mother(janice, louise).
mother(lucy, janet).
mother(louise, caroline).
mother(louise,martin).

father(henry,jonathan).
father(john,mary).
father(francis,william).
father(francis,louise).
father(john,mark).
father(gavin,lucy).
father(john,francis).
father(martin,david).

father(martin,janet).
parent(victoria,george).
parent(victoria,edward).
parent(X,Y):- write('mother?'),nl,mother(X,Y), write('mother!'),nl.
parent(A,B):- write('father?'),nl,father(A,B), write('father!'),nl.
parent(elizabeth,charles).
parent(elizabeth,andrew).