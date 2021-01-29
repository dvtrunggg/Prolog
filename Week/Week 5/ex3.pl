trainDirect(paris,nancy).
trainDirect(nancy,metz).
trainDirect(metz,strasbourg).
trainDirect(paris,lyon).
trainDirect(lyon,marseille).
trainDirect(marseille,nice).
trainDirect(paris,lehavre).

allerDe(X,X).
allerDe(X,Y):-trainDirect(X,Z), allerDe(Z,Y).