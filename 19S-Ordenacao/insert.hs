qsort [] = []
qsort (x:xs) = qsort [y | y <- xs, y < x] ++ [x] ++ qsort [y | y <- xs, y >= x]

insert x xs = qsort (x : xs)


main = do
    print $ insert 3 [2,7,12] == [2,3,7,12]
    print $ insert 1 [2,7,12] == [1,2,7,12]
    print $ insert 10 [2,7,12] == [2,7,10,12]
    print $ insert 15 [2,7,12] == [2,7,12,15]