triangulo :: (Int, Int, Int) -> ([Char], Int)
triangulo (a, b, c)
    | (a + b > c && a + c > b && b + c > a) =
        case () of
            () | (a == b) && (a == c) ->("TRIANGULO EQUILATERO", a+b+c)
            () | (a == b) || (a == c) ->("TRIANGULO ISOSCELES", a+b+c)
            () | otherwise -> ("TRIANGULO ESCALENO", a+b+c)
    |   otherwise = ("NÃO É UM TRIANGULO", 0)