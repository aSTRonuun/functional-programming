isSort [] = True
isSort (x:xs) = if (length xs) == 0 then True else if (x < (head xs)) then isSort xs else False

main = do
    print $ isSort [1,2,3,4,5]