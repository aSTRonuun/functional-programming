max3 x y z
    | x > y && x > z = x
    | y > x && y > z = y
    | otherwise = z

main = do
    print $ max3 6 2 4 -- 6
    print $ max3 6 7 4 -- 7
    print $ max3 6 7 9 -- 9
    print $ max3 5 2 5 -- 5