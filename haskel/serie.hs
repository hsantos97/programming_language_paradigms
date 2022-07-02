serie::(Float,Int)->Float
serie (x,n) = calc (x,n) 0

calc::(Float,Int)->Float->Float
calc (x,n) y
	|n==1 = y + ((fromIntegral (n))/x)
	|odd n = calc (x, n-1) y+(fromIntegral (n))/x
	|even n = calc (x, n-1) y+(x/(fromIntegral (n))) -- retorna True se a integral for par, False caso contrário.
