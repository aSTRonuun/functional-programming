
at' (x:xs) ind
    | ind == 0 = x
    | otherwise = at' xs (ind - 1)


at ind xs = at' xs $ mod ind $ length xs
    
main = do
    print $ at  2 [1..10] 
    print $ at  (-2) [1..10]
    print $ at  (11) [1..10]