length' [] = 0
length' (x:xs) = 1 + length' xs

main = do
    print(length' [])
    print(length' [1])
    print(length' [2,3])
    print(length' [3,2,1])
    