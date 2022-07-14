myElemIndex elemI xs 
    | elemI `elem` xs = Just ( outVetor ([i | (x,i) <- zip xs [0..], x == elemI])) 
    | otherwise = Nothing
    where
        outVetor (x:xs) = x


main = do
    print $ myElemIndex 4 [1,2,6,4,3]
    print $ myElemIndex 5 [1,2,6,4,3]
    print $ myElemIndex 4 []
    print $ myElemIndex 1 [1,2,6,4,3]
