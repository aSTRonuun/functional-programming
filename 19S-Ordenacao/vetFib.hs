main = do
    print $ generateFib 2 ==  [0,1]
    print $ generateFib 3 ==  [0,1,1]
    print $ generateFib 6 ==  [0,1,1,2,3,5]
    print $ generateFib 9 ==  [0,1,1,2,3,5,8,13,21]


generateFib 1 = [1]
generateFib 2 = [0,1]
generateFib 3 = [0,1,1]
generateFib x = generateFib (x-1) ++ [sum ((lastNumber x) : lastTwoNumbers x : [])]
    where
        lastNumber x = last (generateFib (x-1))
        lastTwoNumbers x = last (generateFib (x-2))
        