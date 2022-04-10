contar y [] = 0
contar y (x:xs) = (if y == x then 1 else 0) + contar y xs