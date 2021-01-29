concat1(L1, L2, L) :-accConcat(L1, L2, L2, L). /*khởi tạo với L bắt đầu bằng L2, thay vì rỗng lát nữa lại gán á:))*/
accConcat([], L2, L, L).
/*cách 1: thay vì Acc1 = Acc append T thì làm như kiểu này nè)*/ 
accConcat([_|Q], L2, [_|Acc], L) :- accConcat(Q, L2, Acc, L). 

prefix(P, L) :- append(P, _, L).
suffixe(S, L) :- append(_, S, L).

sousListe(S, L):-prefix(S1, L), suffixe(S,S1).

/*slide 36*/
a_similaire_b([], []).
a_similaire_b([a|Q1], [b|Q2]):- a_similaire_b(Q1,Q2).
