euler1 x = sum [x | x <- [1..x-1], x `mod` 3 == 0  || x `mod` 5 == 0]
main = do
    print $ euler1 3
    print $ euler1 4
    print $ euler1 5
    print $ euler1 6
    print $ euler1 10 
    print $ euler1 1000