menores y [] = []
menores y (x:xs) = if length (x:xs) > y then menores y xs else x:menores y xs

main = do
    print $ menores 5 [6,2,3,4,9]