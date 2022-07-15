convertUpperCase string = [y | (x,y) <- zip ['a'..'z'] ['A'..'Z'], x == string || y == string]

concatString [] = ""
concatString (x:xs) = x ++ concatString xs

functionUpper [] = []
functionUpper (x:xs) = if (x >= 'a' && x <= 'z') then (convertUpperCase x) : functionUpper xs else [x] : functionUpper xs

myupper xs = concatString (functionUpper xs)

main = do
    print $ myupper "abc"
    print $ myupper "a Casa Caiu"
    print $ myupper "tenho 45 ABCs"