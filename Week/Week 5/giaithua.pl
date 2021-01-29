fact(1,1). /* fact (giai thừa) của 1 là 1*/
fact(N,F) :- /* fact của N là 1 số F nếu: */
	N>0, N1 is N-1, /* với N > 0*/
	fact(N1, F1), F is F1*N. /*gọi dệ quy cho tới khi tính dc fact(1,1) = 1 */
							/*(khi này N = 1 và F1=1),  */
							
fibo(0,1).
fibo(1,1).
fibo(N,F) :-
	N >= 2, N1 is N-1, N2 is N-2,
	fibo(N1, F1), fibo(N2, F2), 
	F is F1 + F2.
