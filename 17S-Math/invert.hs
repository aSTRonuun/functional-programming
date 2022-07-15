inverDigits 0 = 0
inverDigits x = inverDigits (x `div` 10) + (x `mod` 10) * 10 ^ (length (show x) - 1)

main = do
    print $ inverDigits 1923 == 3291
    print $ inverDigits 123 == 321
    print $ inverDigits 39402 == 20493
    print $ inverDigits 5 == 5