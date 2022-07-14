isPrime x = [ y | y <- [2..(x-1)], x `mod` y == 0] == []

main = do
    print $ isPrime 1 == True
    print $ isPrime 2 == True
    print $ isPrime 10 == False
    print $ isPrime 13 == True