 -- recursao
length_recursivo [] = 0
length_recursivo (x:xs) = 1 + length_recursivo xs

 -- foldl
contar x _ = x + 1
total = foldl contar 0 [1,2,3,4,5]

-- foldl  com notacao lambda
length_foldl_lambda = foldl (\x _ -> x + 1) 0 [1,2,3,4,5]

main = do
    print(length_foldl_lambda []) -- 0
    print(length_foldl_lambda [1]) -- 1
    print(length_foldl_lambda [2,3]) -- 2
    print(length_foldl_lambda [3,2,1])  -- 3
    