dividirDigitsWithRecursion 0 = [0]
dividirDigitsWithRecursion xs = (dividirDigitsWithRecursion (div xs 10)) ++ [mod xs 10]

main = do
    print $ dividirDigitsWithRecursion 0
    print $ dividirDigitsWithRecursion 123
    print $ dividirDigitsWithRecursion 51234