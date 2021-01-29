s --> sn(Nombre), sv(Nombre).
sn(Nombre) --> nom(Nombre).
sn(Nombre) --> det(Nombre), nom(Nombre).
sn(Nombre) --> det(Nombre), s_adj(Nombre, _), nom(_).
sv(Nombre) --> vi(Nombre).
sv(Nombre) --> vt(Nombre), sn(_).


vi(Nombre) --> [Mot], {lexique(Mot, vi, Nombre)}.
vt(Nombre) --> [Mot], {lexique(Mot, vt, Nombre)}.


nom(Nombre) --> [Mot], {lexique(Mot, nom, Nombre)}.
det(Nombre) --> [Mot], {lexique(Mot, det, Nombre)}.

adj(Nombre, adj1) --> [Mot], {lexique(Mot, adj1, Nombre)}.
adj(Nombre, adj2) --> [Mot], {lexique(Mot, adj2, Nombre)}.

s_adj(Nombre, T) --> adj(Nombre, T).
s_adj(Nombre, T) --> adj(Nombre, T), s_adj(_, T).


lexique(the, det, _).
lexique(an, det, voyelle).
lexique(a, det, con).

lexique(small, adj2, con).
lexique(large, adj1, con).

lexique(brown, adj1, con).
lexique(orange, adj1, voyelle).
lexique(green, adj1, con).
lexique(blue, adj1, con).

lexique(brown, adj2, con).
lexique(orange, adj2, voyelle).
lexique(green, adj2, con).
lexique(blue, adj2, con).

lexique(boy, nom, con).
lexique(cat, nom, con).
lexique(man, nom, con).
lexique(dog, nom, con).
lexique(mat, nom, con).

lexique(took, vt, _).
lexique(sees, vt, _).
lexique(saw, vt, _).
lexique(hears, vt, _).
lexique(will_see, vt, _).
lexique(sat, vi, _).




