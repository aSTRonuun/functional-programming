pertence x [] = False
pertence y (x:xs) = y == x || pertence y xs


main = do
    print(pertence 1 [])
    print(pertence 1 [3])
    print(pertence 3 [4])
    print(pertence 1 [3,7,4,2])
    print(pertence 2 [3,7,4,2])
    print(pertence 3 [3,7,4,2])
    print(pertence 7 [3,7,4,2])