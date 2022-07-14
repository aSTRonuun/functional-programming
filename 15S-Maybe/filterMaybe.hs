import Data.Maybe 

filterMaybe :: [Maybe Int] -> [Int]
filterMaybe xs = [x | Just x <- xs]

countNothing :: [Maybe Int] -> Int
countNothing xs = foldr (\x acc -> if isNothing x then acc + 1 else acc) 0 xs

main = do
    print $ filterMaybe [(Just 5), Nothing, (Just 7)]
    print $ filterMaybe [(Just 1), Nothing, (Just 3)]
    print $ filterMaybe [Nothing, Nothing, Nothing]
    print $ filterMaybe []
    print $ countNothing [(Just 5), Nothing, (Just 7)]