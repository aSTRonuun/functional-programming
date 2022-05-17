removerMaior [] = []
removerMaior [x] = []
removerMaior (x:xs) = if x > (head xs) then removerMaior xs else x:removerMaior xs


main = do
    print $ removerMaior [6,2,3,4,9]