maiorElemento xs = foldr max 0 xs

removerMaior [] = []
removerMaior [x] = []
removerMaior (x:xs) = if x == maiorElemento (x:xs) then removerMaior xs else x:removerMaior xs


main = do
    print $ removerMaior [1]
    print $ removerMaior [1,3] 
    print $ removerMaior [1,3,5] 
    print $ removerMaior [1,3,5,2] 