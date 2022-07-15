selectString string indexs = map (\i -> string !! i) indexs

main = do
    print $ selectString "abcdefg" [0,3,2,3]