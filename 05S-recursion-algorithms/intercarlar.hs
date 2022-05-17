intercala [] ys = ys
intercala xs [] = xs
intercala (x:xs) (y:ys) = x:y:intercala xs ys

main = do
    print $ intercala [1,2,3] [4,5,6]