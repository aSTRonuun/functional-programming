main = do
    print $ mymerge [7,7,9] [1,3] == [1,3,7,7,9]

mymerge [] [] = []
mymerge [] ys = ys
mymerge xs [] = xs
mymerge (x:xs) (y:ys)
    | x < y = x : mymerge xs (y:ys)
    | otherwise = y : mymerge (x:xs) ys