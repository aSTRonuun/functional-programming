mytails [] = []
mytails (x:xs) = ([x] ++ xs) : mytails xs

main = do
    print $ mytails [1,3,5]