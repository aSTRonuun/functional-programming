listacumuladora [] = []
listacumuladora xs = (listacumuladora (init xs)) ++ [sum xs]

main = do
    print $ listacumuladora [1,2,3,4]