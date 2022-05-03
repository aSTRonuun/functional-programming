index_of elem xs = if index_of' elem xs >= length xs then -1 else index_of' elem xs
    where index_of' elem xs = foldr (\x acc -> if x == elem then 0 else acc + 1) 0 xs