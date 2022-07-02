dobro d = d + d
quadriplicar q = q * 4
distancia  x1 y1 x2 y2 = sqrt(((x2-x1)^ 2)+((y2-y1)^2))
pitagoras a b = sqrt((a^2)+(b^2))

equacao :: Float -> Float -> Float -> String
equacao a b c 
    | delta > 0 = (show x1) ++ (show x2)
    | otherwise = "INDEFINIDO"
    where 
        delta = (b^2)-4*(a*c)
        x1 = (-b + sqrt(delta)) / (2*a)
        x2 = (-b - sqrt(delta)) / (2*a)