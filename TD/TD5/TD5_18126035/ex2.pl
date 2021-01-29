inclus(irina,natsha).
inclus(natsha, olga).
inclus(olga, katarina).

interieur(X,X).
interieur(X,Y) :-inclus(X,Z), interieur(Z,Y).