pa(1,1).
pa(2,1).
pa(N,S):-N>2,
    Aux1 is (N-1),
    Aux2 is (N-2),
    pa(Aux1, Parc1),
    pa(Aux2, Parc2),
    S is (Parc1 + Parc2).
