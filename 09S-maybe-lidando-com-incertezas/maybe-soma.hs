




soma x y
    | isJust x && isJust y = fromJust  x + fromJust y
    | isNothing x && isJust y = fromJust y
    | isJust x && isNothing y = fromJust x
    | otherwise = 0