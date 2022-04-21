sumImpar xs = sum [x | x <- xs, odd x]

main = do
    print $ sumImpar [2,3,1,5]
    print $ sumImpar [1,1,4,2]
    print $ sumImpar [3,2,4,6,5,7,8,0,1]
    print $ sumImpar [2,3,1,5,2,2]
    print $ sumImpar [1,1,1,1]