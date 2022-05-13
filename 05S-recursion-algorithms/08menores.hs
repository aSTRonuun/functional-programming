menores y [] = []
menores y (x:xs) = if x < y then x:menores y xs else menores y xs

main = do
    print $ menores 5 [6,2,3,4,9]