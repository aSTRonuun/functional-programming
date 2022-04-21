splitAt' xs x = (take x xs, drop x xs)

main = do
    print $ splitAt' [1,2,3,4] 0 
    print $ splitAt' [1,2,3,4] 1
    print $ splitAt' [1,2,3,4] 2
    print $ splitAt' [1,2,3,4] 3
    print $ splitAt' [1,2,3,4] 4 