pere_de(paul, christine).
pere_de(paul, sylvain).
pere_de(mathias, catherine).
pere_de(albert, francois).
pere_de(sylvain, nathalie).

mere_de(helene, christine).
mere_de(helene, sylvain).
mere_de(sylvie, catherine).
mere_de(christine, francois).
mere_de(catherine, nathalie).

parent_de(X,Y):-pere_de(X,Y).
parent_de(X,Y):-mere_de(X,Y).

enfant_de(X,Y):-parent_de(Y,X).

grand_mere_de(X,Y):-mere_de(X,Z),mere_de(Z,Y).

grand_pere_de(X,Y):-pere_de(X,Z),pere_de(Z,Y).

grand_parent_de(X,Y):-parent_de(X,Z), parent_de(Z,Y).

femme_de(X,Y):-mere_de(X,Z) , pere_de(Y,Z).
mari_de(X,Y):-mere_de(Y,Z) , pere_de(X,Z).