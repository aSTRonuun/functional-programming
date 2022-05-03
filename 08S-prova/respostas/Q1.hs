index_of' elem [] =  (-1)
index_of' elem (x:xs) = if elem == x then length xs else index_of' elem xs

index_of elem xs 
    | index_of' elem xs == (-1) = (-1)
    | otherwise = length xs - index_of' elem xs - 1
    
main = do
    print $ index_of 4 [1,2,3,4,5,6,4]