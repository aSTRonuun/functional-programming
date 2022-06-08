import Control.Monad (replicateM)

setL xs pos value = take pos xs ++ [value] ++ drop (pos + 1) xs 

setLTest = do
    print $ setL [1,2,3,4,5] 2 2 == [1,2,2,4,5]
    print $ setL [1,2,3,4,5] 3 2 == [1,2,3,2,5]

setM xxs l c value = inicio ++ [meio] ++ fim
    where 
        inicio = take l xxs
        meio = setL (xxs !! l) c value
        fim = drop (l + 1) xxs

main :: IO ()
main = do
    [nl, nc] <-  map (read :: String -> Int) . words <$> getLine
    mat <- replicateM nl getLine
    mapM_ putStrLn mat 