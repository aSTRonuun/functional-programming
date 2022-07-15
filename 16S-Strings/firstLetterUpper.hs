
convertUpperCaseToLowerCase string = [y | (x,y) <- zip ['a'..'z'] ['A'..'Z'], string == x]
convertLowerCaseToUpperCase string = [y | (x,y) <- zip ['A'..'Z'] ['a'..'z'], string == x]

concatString [] = ""
concatString (x:xs) = x ++ concatString xs

functionFirstUpper [] = []
functionFirstUpper (x:xs)
    | x == ' ' && (head xs) /= ' ' && (head xs) >= 'a' && (head xs) <= 'z' = [(convertLowerCaseToUpperCase (head xs))] : functionFirstUpper xs 
    | x == ' ' && (head xs) /= ' ' && (head xs) >= 'A' && (head xs) <= 'Z' = [x] : functionFirstUpper xs
    | otherwise = functionFirstUpper xs

firstLetterUpper xs = concatString (functionFirstUpper xs)


main = do
    print $ firstLetterUpper "hello world"