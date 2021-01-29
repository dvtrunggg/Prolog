path(v11, h11).
path(v12, h22).
path(v12, v22).
path(v13, h32).
path(v14, h41).
path(v15, h52).
path(v16, v26).
path(v16, h62).
path(v17, h61).
path(v22, h13).
path(v22, h23).
path(v23, h32).
path(v24, v14).
path(v25, h52).
path(v27, v17).

path(h11, h21).
path(h11, v12).
path(h31, h41).
path(h41, h51).
path(h41, v15).
path(h12, h22).
path(h12, v22).
path(h32, v14).
path(h42, v14).
path(h52, v26).
path(h52, h62).
path(h62, v17).
path(h13, v21).
path(h23, v23).
path(h33, v23).

traverser(X, Y) :-path(X, Y).
traverser(X,Y) :-path(X,Z), write(X), write(' to '), write(Z), nl, traverser(Z,Y).