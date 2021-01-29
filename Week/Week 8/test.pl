
/*
s(A-C):- np(A-B), vp(B-C).
np(A-C):- det(A-B), n(B-C).
vp(A-C):- v(A-B), np(B-C).
vp(A-C):- v(A-C).
det([the|W]-W).
det([a|W]-W).
n([man|W]-W).
n([woman|W]-W).
v([shoots|W]-W).
*/
/*
s-->np,vp.
np-->det,n.
vp-->v,np.
vp-->v.
det-->[the].
det-->[a].
n-->[man].
n-->[woman].
v-->[shoots].
*/

ab -->[].
ab -->[a], ab, [b].

ab2 -->[ab].
ab2 -->[a], ab, [b].

ab3 -->[].
ab3 -->[a], ab3, [b], [b].




palindrome_pair -->[].
palindrome_pair --> [a], palindrome_pair, [a].
palindrome_pair --> [b], palindrome_pair, [b].

palindrome_impair -->[a].
palindrome_impair -->[b].
palindrome_impair --> [b], palindrome_impair, [b].
palindrome_impair --> [a], palindrome_impair, [a].

/*
s --> sn, sv.
sn --> np.
sv --> vt, sn.
sv --> vi.
np --> [paul].
np --> [ils].
vi --> [dort].
vi --> [dorment].
vt --> [ecoutent].
*/
/*
s --> sn(Nombre), sv(Nombre).
sn(Nombre) --> np(Nombre).
sv(Nombre) --> vt(Nombre), sn(_).
sv(Nombre) --> vi(Nombre).
np(sing) --> [paul].
np(plur) --> [ils].
vi(sing) --> [dort].
vi(plur) --> [dorment].
vt(plur) --> [ecoutent].
*/

s-->ablock(Count),bblock(Count),cblock(Count).
ablock(0) --> [].
ablock(NewCount) --> [a], ablock(Count),
{NewCount is Count + 1}.

bblock(0) --> [].
bblock(NewCount) --> [b], bblock(Count),
{NewCount is Count + 1}.

cblock(0) --> [].
cblock(NewCount) --> [c], cblock(Count),
{NewCount is Count + 1}.












