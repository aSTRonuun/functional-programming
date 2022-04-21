fat x
    | x == 0 || x == 1 = 1
    | otherwise = x * fat (x - 1)

main = do 
    print $ fat 0
    print $ fat 1
    print $ fat 5