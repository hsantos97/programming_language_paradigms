somaImpar::Int->Int
somaImpar x = aux x 0

aux::Int->Int->Int
aux x y
	|x==1 = y+x -- caso seja passado por parametro 1, ele retorna 1
	|odd x = aux (x-2) (y+x) -- metodo odd retorna True se a integral for ímpar, False caso contrário.
	|otherwise = aux (x-1) y