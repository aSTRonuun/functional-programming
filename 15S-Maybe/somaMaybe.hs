sumMaybe (Just x) (Just y) = Just (x + y)
sumMaybe (Just x) Nothing = Just (x)
sumMaybe Nothing (Just y) = Just (y)
sumMaybe Nothing Nothing = Nothing

main = do
    print $ sumMaybe (Just 5) (Just 7)
    print $ sumMaybe (Just 5) Nothing 
    print $ sumMaybe Nothing (Just 3)
    print $ sumMaybe Nothing Nothing