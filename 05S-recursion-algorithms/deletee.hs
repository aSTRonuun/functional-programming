deletee' 0 elem xs = xs
deletee' 1 elem [x] = []
deletee' qtd elem [] = []
deletee' qtd elem (x:xs) = if elem == x && qtd > 0 then deletee' (qtd-1) elem xs else x : deletee' qtd elem xs


deletee elem xs = deletee' 1 elem xs

main = do
    print $ deletee 5 []
    print $ deletee 1 [1]
    print $ deletee 4 [1,3,4]
    print $ deletee 3 [4,3,1,3]
    print $ deletee 5 [1,5,6,9]