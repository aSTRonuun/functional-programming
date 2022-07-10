import Data.Maybe

patternSum xs (Just y) = [x + fromJust y | x <- xs]
patternSum xs Nothing = xs


soma_veto2 xs y 
    | isJust y = [x + fromJust y | x <- xs]
    | otherwise = xs

    -- [] ( Just 7 )