byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).
byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).
byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(losAngeles,auckland).

travel(X,Y):-byCar(X,Y).
travel(X,Y):-byTrain(X,Y).
travel(X,Y):-byPlane(X,Y).


travel0(X,Y):-byCar(X,Z), travel0(Z,Y).
travel0(X,Y):-byTrain(X,Z), travel0(Z,Y).
travel0(X,Y):-byPlane(X,Z), travel0(Z,Y).


travel1(X,Y):-byCar(X,Y),write(X),write(' - '),write(Y),nl.
travel1(X,Y):-byTrain(X,Y),write(X),write(' - '),write(Y),nl.
travel1(X,Y):-byTrain(X,Y),write(X),write(' - '),write(Y),nl.

travel1(X,Y):-byCar(X,Z),write(X),write(' - '),write(Z),nl,travel1(Z,Y).
travel1(X,Y):-byTrain(X,Z),write(X),write(' - '),write(Z),nl,travel1(Z,Y).
travel1(X,Y):-byPlane(X,Z),write(X),write(' - '),write(Z),nl,travel1(Z,Y).


travel2(X,Y):-byCar(X,Y),write(X),write(' - '),write(Y),write(' by car'),nl.
travel2(X,Y):-byTrain(X,Y),write(X),write(' - '),write(Y),write(' by train'),nl.
travel2(X,Y):-byPlane(X,Y),write(X),write(' - '),write(Y),write(' by plane'),nl.

travel2(X,Y):-byCar(X,Z),write(X),write(' - '),write(Z),write(' by car'),nl,travel2(Z,Y).
travel2(X,Y):-byTrain(X,Z),write(X),write(' - '),write(Z),write(' by train'),nl,travel2(Z,Y).
travel2(X,Y):-byPlane(X,Z),write(X),write(' - '),write(Z),write(' by plane'),nl,travel2(Z,Y).




