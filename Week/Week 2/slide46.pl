person(frances, wilson,female, 28, architect).
person(fred, jones, male,62, doctor).
person(paul, smith, male,45, plumber).
person(martin, williams,male, 23, chemist).
person(mary, jones, female, 24, programmer).
person(martin, johnson, male, 47, solicitor).

males(X):-person(_,X,male,_,_).
femmes(X):-person(_,X,female,_,_).

martins(X):-person(martin,X,_,_,_).
docteurs(X,Y):-person(X,Y,_,doctor,_).
programmeurs(X):-person(X,_,_,_,programmer).
f(X,Y):-person(X,Y,_,_,chemist).
g(X,Y):-person(X,Y,_,Z,_), Z =< 45. 
h(X,Y):-person(X,Y,_,Z,chemist), Z>=30, Z=<60.
