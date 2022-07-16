main = do
    print $ qsort [7,3,5,7,8,4]

qsort [] = []
qsort (x:xs) = qsort [y | y <- xs, y < x] ++ [x] ++ qsort [y | y <- xs, y >= x]