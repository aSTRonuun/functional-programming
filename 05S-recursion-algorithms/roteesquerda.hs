rotacionarEsquerda 0 xs = xs
rotacionarEsquerda n (x:xs) = rotacionarEsquerda (n-1) (xs ++ [x])

main = do
    print $ rotacionarEsquerda 1 "abc"