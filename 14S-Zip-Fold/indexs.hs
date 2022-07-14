indexs x xs = [i | (y,i) <- zip xs [0..], x == y]

main = do 
    print $ indexs 0 [1,0,0,0,1] == [1,2,3]
    print $ indexs 5 [1,3,5,2,3,5,5] == [2,5,6]
    print $ indexs 7 [1,3,5,2,3,5,5] == []
    print $ indexs 3 [1,3,5,2,3,5,5] == [1,4]
