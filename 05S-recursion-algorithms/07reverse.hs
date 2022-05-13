reverso [] = []
reverso [x] = [x]
reverso (x:xs) = reverso xs ++ [x]

main = do
    print $ reverso [1,2,3,4,5]
    print $ reverso [1]
