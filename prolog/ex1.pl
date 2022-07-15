%FATOS
progenitor(joao, jose).
progenitor(maria, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).

feminino(maria).
feminino(iris).
feminino(julia).
feminino(ana).
masculino(joao).
masculino(jose).
masculino(jorge).

%REGRAS
mae(X, Y):-progenitor(X,Y),feminino(X).
pai(X, Y):-progenitor(X,Y),masculino(X).
avo(X, Y):-progenitor(X,Z),progenitor(Z, Y),masculino(X).
avoo(X, Y):-progenitor(X,Z),progenitor(Z, Y),feminino(X).
irmao(X, Y):-progenitor(Z, X), progenitor(Z, Y), \=(X,Y).

%REGRAS ANTEPASSADO
antepassado(X,Z):-progenitor(X,Z).
antepassado:-progenitor(X,Y), antepassado(Y,Z).