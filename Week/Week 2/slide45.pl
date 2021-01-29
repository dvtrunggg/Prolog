person(bill,male).
person(george, male).
person(alfred, male).
person(carol, female).
person(margeret, female).
person(jane, female).

couple(X,Y) :-person(X,male), person(Y,female).