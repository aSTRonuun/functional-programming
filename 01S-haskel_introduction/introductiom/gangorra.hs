gangorra p1 c1 p2 c2 
    | left < right = -1
    | left > right = 1
    | otherwise = 0
    where 
        left = p1 * c1
        right = c2 * p2