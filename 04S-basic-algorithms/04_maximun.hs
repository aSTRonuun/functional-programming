maximun_recursivo [x] = x
maximun_recursivo (x:xs) = if maxrest > x then maxrest else x
    where maxrest = maximun_recursivo xs

maximun_recursivo' [x] = x
maximun_recursivo' (x:xs) = if x > maximun_recursivo' xs then x else maximun_recursivo' xs

main = do
    print $ maximun_recursivo' [4]
    print $ maximun_recursivo' [5,1]
    print $ maximun_recursivo' [5,7]
    print $ maximun_recursivo' [1,2,7,1,5]
    print $ maximun_recursivo' [1,2,3,1,5]