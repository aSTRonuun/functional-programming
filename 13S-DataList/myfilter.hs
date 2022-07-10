myfilter item [] = []
myfilter item (x:xs) 
    | item x = x : myfilter item xs
    | otherwise = myfilter item xs

main = do
    print $ myfilter (>5) [0..10] == [6..10]
    print $ myfilter (odd) [0..10] == [1..10]