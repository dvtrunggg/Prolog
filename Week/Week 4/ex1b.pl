
is_digesting(X,Y) :-just_ate(X,Z), is_digesting(Z, Y).
is_digesting(X,Y) :-just_ate(X,Y).

just_ate(mosquito, blood(john)).
just_ate(frog, mosquito).
just_ate(stork, frog).