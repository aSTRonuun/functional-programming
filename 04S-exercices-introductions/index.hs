at' xs 0 = head xs 
at' (x:xs) ind = at' xs (ind-1)

at xs ind
    | ind >= 0 = at' xs ind
    | ind > length at' xs (ind `mod` length xs) 
    


main = do
    print $ at [1..10] 2
    print $ at [1..10] (-2)
    print $ at [1..10] (11)