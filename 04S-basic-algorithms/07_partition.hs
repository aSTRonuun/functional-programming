splitints xs = ([x | x <- xs, odd x], [x | x <- xs, even x])

main = do
    print $ splitints [1,2,3,4,5,6,7]