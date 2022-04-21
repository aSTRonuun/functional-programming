-- concat with no repeats
uniao [] ys = ys
uniao (x:xs) ys = if elem x ys then uniao xs ys else x:uniao xs ys

-- concat with repeats
uniao' [] ys = ys
uniao' (x:xs) ys = x:uniao' xs ys

contact xs ys = xs ++ [x | x <- ys, not (elem x xs)]

main = do
    print $ contact [4,5] [1]
    print $ contact [4,5] [4,2,5]
    print $ contact [1,2,3] [2,4,6]