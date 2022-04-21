-- para cada elemento em xs, se x tiver em ys, retorna x
intersec xs ys = [x | x<-xs, elem x ys]

main = do
    print $ intersec [3] [3]
    print $ intersec [3,4,1] [1,4,3]
    print $ intersec [3,6,5,7] [9,7,5,1,3,6]
    print $ intersec [3,6,5,7] [9,7,5,1,3]