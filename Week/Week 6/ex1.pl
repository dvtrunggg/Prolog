membre(X, [X|_]). /*điều kiện dừng (khi mảng chỉ có mình X, phía sau là cái gì đó)*/
membre(X, [_|Q]) :-membre(X,Q). /* X là element của T (là _ á) khi mà X là element của Q*/


/*slide 12 */   
longeur([], 0).
longeur([_|Q], L) :-longeur(Q, L2), L is L2 + 1.

/*slide 13 */
concat([], L2, L2).
concat([_|Q], L2, [_|QR]) :-concat(Q,L2,QR).
/*concat([T|Q], L2, [T|QR]) :-concat(Q,L2,QR).*/

/*đảo ngược*/
concat(Q, [T], QR].
inverse([], []).
inverse([T|Q], QR) :- inverse(Q,Q1), concat(Q1,[T], QR).

/*cách hiệu quả hơn*/
accInverse([], L, L).
accInverse([_|Q], Acc, Inv):- accInverse)Q, [T|Acc], Inv).
inverse2(L1, L2):-accInverse(L1, [], L2).

/*độ dài */
longeur(L,N) :-accLongeur(L,0,N). /*ban đầu acc là 0*/
accLongeur([], N, N).  /*điều kiện dừng*/
accLongeur([_|Q], Acc, N):- Acc1 is Acc + 1,  accLongeur(Q, Acc1, N). /*Acc1 tăng dần...

/*nối chuỗi*/
concat1(L1, L2, L) :-accConcat(L1, L2, L2, L). /*khởi tạo với L bắt đầu bằng L2, thay vì rỗng lát nữa lại gán á:))*/
accConcat([], L2, L, L).
/*cách 1: thay vì Acc1 = Acc append T thì làm như kiểu này nè)*/ 
accConcat([_|Q], L2, [_|Acc], L) :- accConcat(Q, L2, Acc, L). 

