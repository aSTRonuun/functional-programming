
quadradoPerfeito' i n
    | i * i == n = True
    | i * i > n = False
    | otherwise = quadradoPerfeito' (i + 1) n


quadradoPerfeito n = quadradoPerfeito' 1 n

main = do
    print $ quadradoPerfeito 12 
    print $ quadradoPerfeito 16
    print $ quadradoPerfeito 25
    print $ quadradoPerfeito 5 