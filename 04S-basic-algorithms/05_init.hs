init' xs = take (length xs - 1) xs

main = do
    print $ init' [1]
    print $ init' [1,2]
    print $ init' [1,2,3,4]