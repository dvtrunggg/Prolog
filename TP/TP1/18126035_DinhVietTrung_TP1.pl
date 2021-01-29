homme(albert).
homme(tom).
homme(daniel).
homme(david).
homme(michel).
homme(jack).
homme(john).
homme(scott).
homme(francois).

femme(marie).
femme(isabelle).
femme(jacques).
femme(sylvie).
femme(maria).
femme(jeanne).
femme(august).
femme(linda).
femme(nicole).
femme(hana).
femme(jacqueline).
femme(chloe).

parent(albert, sylvie).
parent(marie, sylvie).
parent(tom, david).
parent(isabelle, david).
parent(jacques, michel).
parent(daniel, michel).
parent(sylvie, jack).
parent(sylvie, john).
parent(sylvie, august).
parent(david, jack).
parent(david, john).
parent(david, august).
parent(michel, linda).
parent(michel, nicole).
parent(maria, linda).
parent(maria, nicole).
parent(jeanne, scott).
parent(jack, scott).
parent(scott, hana).
parent(scott, francois).
parent(linda, hana).
parent(linda, francois).
parent(francois, chloe).
parent(jacqueline, chloe).

marie_a(albert, marie).
marie_a(tom, isabelle).
marie_a(daniel, jacques).
marie_a(sylvie, david).
marie_a(michel, maria).
marie_a(jeanne, jack).
marie_a(linda, scott).
marie_a(francois, jacqueline).

epoux(X, Y):-marie_a(X, Y), homme(X).
epouse(X, Y):-marie_a(X,Y), femme(X).

pere(X,Y):-parent(X,Y), homme(X).
mere(X,Y):-parent(X,Y), femme(X).

enfant_de_meme_parents(X,Y):-parent(Z,X), parent(Z,Y).

frere(X,Y):-enfant_de_meme_parents(X,Y), homme(X).

soer(X,Y):-enfant_de_meme_parents(X,Y), femme(X).

grand_parent(X,Y):-parent(X,Z), parent(Z,Y).
grand_pere(X,Y):-grand_parent(X,Y),homme(X).
grand_mere(X,Y):-grand_parent(X,Y),homme(X).

oncle_ou_tante(X,Y):-parent(Z,Y), enfant_de_meme_parents(Z,X).
oncle(X,Y):-oncle_ou_tante(X,Y),homme(X).
tante(X,Y):-oncle_ou_tante(X,Y),femme(X).

cousin(X,Y):-oncle_ou_tante(Z,Y), parent(Z,X).
niece_ou_neveu(X,Y):-parent(Z,X), enfant_de_meme_parents(Z,Y).
niece(X,Y):-niece_ou_neveu(X,Y), femme(X).
neveu(X,Y):-niece_ou_neveu(X,Y), homme(X).

petit_fils(X,Y):-grand_parent(Y,X),homme(X).
petit_fille(X,Y):-grand_parent(Y,X),femme(X).