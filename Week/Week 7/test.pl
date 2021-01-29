min_([], A, A). 
min_([T|Q], A, M):-A >= T, min(Q, T, M).
min_([[T|Q], A, M):-A<T, min_(Q,A,M).
min_([T|Q], M):-min_(Q,T,M).
