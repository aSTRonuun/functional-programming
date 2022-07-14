reduceFraction (x,y) = last (reduces (x, y))
    where
        reduces (x, y) = [(x `div` g, y `div` g) | g <- [2..y], x `mod` g == 0, y `mod` g == 0]

main = do 
    print $ reduceFraction (10,2)
    print $ reduceFraction (15,6)
    print $ reduceFraction (30,12)
    print $ reduceFraction (120,48)
    print $ reduceFraction (50,100)