sumOfdigits 0 = 0
sumOfdigits n = (sumOfdigits (n `div` 10)) + (n `mod` 10)

main = do
    print $ sumOfdigits 4132 == 10
    print $ sumOfdigits 328464584658 == 63