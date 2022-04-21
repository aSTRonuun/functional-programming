verificaIndice xs p q = p <= (length xs) - 1 && q <= (length xs) -1

swap xs p q = 
    if (verificaIndice xs p q) then 
        (take p xs) ++ [xs !! q] ++ (take (q - p - 1) (drop (p + 1) xs)) ++ [xs !! p] ++ (drop (q + 1) xs)
    else xs

main = do
    print $ swap [1] 0 3
    print $ swap [1,3,4] 1 2
    print $ swap [1,2,3,4,5,6] 2 5
    print $ swap [5,6,7,8,9] 0 3