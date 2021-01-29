animal(mammal, tiger, carnivore, stripes).
animal(mammal, hyena, carnivore, ugly).
animal(mammal, lion, carnivore, mane).
animal(mammal, zebre, herbivore, stripes).
animal(bird, eagle, carnivore, large).
animal(bird, sparrow, scavenger, small).
animal(reptile, snake, carnivore, long).
animal(reptile, lizard, scavenger, small).

mammifere(X):-animal(mammal,X,_,_).

mammifere3(X):-animal(mammal,X,_,stripes).
