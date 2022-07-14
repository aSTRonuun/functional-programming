convertUpperCase string = [y | (x,y) <- zip ['a'..'z'] ['A'..'Z'], x == string || y == string]

upper string = concatString (map convertUpperCase string)
    where concatString [] = ""
          concatString (x:xs) = x ++ concatString xs

main = do
    print $ upper "abc"
    print $ upper "a Casa Caiu"
    print $ upper "tenho 45  ABCs"