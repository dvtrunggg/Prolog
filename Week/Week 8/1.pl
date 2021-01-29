s --> sn(Nombre), sv(Nombre).

sn(Nombre) --> det(Nombre), np(Nombre).
sn(Nombre) --> det_an(Nombre), np(Nombre).
sn(Nombre) --> det(Nombre), adjs(Nombre), np(Nombre).
sn(Nombre) --> det(Nombre), adjc(Nombre), np(Nombre).
sn(Nombre) --> det(Nombre), adjs(Nombre), adjc(Nombre), np(Nombre).

sn(Nombre) --> np(Nombre).
sn(Nombre) --> adjs(Nombre), np(Nombre).
sn(Nombre) --> adjc(Nombre), np(Nombre).
sn(Nombre) --> adjs(Nombre), adjc(Nombre), np(Nombre).


sv(Nombre) --> vt(Nombre), sn(_).
sv(Nombre) --> vi(Nombre).
np(Nombre) --> [Mot], {lexique(Mot, np, Nombre)}.
vi(Nombre) --> [Mot], {lexique(Mot, vi, Nombre)}.
vt(Nombre) --> [Mot], {lexique(Mot, vt, Nombre)}.
det(Nombre) --> [Mot], {lexique(Mot, det, Nombre)}.
adjs(Nombre) --> [Mot], {lexique(Mot, adjs, Nombre)}.
adjc(Nombre) --> [Mot], {lexique(Mot, adjc, Nombre)}.


lexique(cat, np, sing).
lexique(mat, np, sing).
lexique(man, np, sing).
lexique(boy, np, sing).
lexique(dog, np, sing).
lexique(cats, np, plur).
lexique(mats, np, plur).
lexique(men, np, plur).
lexique(boys, np, plur).
lexique(dogs, np, plur).


lexique(sat, vi, sing).
lexique(sat, vi, plur).

lexique(saw, vi, sing).
lexique(saw, vi, plur).
lexique(saw, vt, sing).
lexique(saw, vt, plur).

lexique(hears, vi, sing).
lexique(hears, vt, sing).

lexique(sees, vi, sing).
lexique(sees, vt, sing).

lexique(took, vi, sing).
lexique(took, vi, plur).
lexique(took, vt, sing).
lexique(took, vt, plur).

lexique(will_see, vi, sing).
lexique(will_see, vi, plur).
lexique(will_see, vt, sing).
lexique(will_see, vt, plur).


lexique(the, det, sing).
lexique(a, det, sing).
lexique(an, detv, sing).


lexique(large, adjs, sing).
lexique(large, adjs, plur).
lexique(small, adjs, sing).
lexique(small, adjs, plur).
lexique(brown, adjc, sing).
lexique(brown, adjc, plur).
lexique(orange, adjc, sing).
lexique(orange, adjc, plur).
lexique(green, adjc, sing).
lexique(green, adjc, plur).
lexique(blue, adjc, sing).
lexique(blue, adjc, plur).








