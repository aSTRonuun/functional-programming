rotacionarEsquerda 0 xs = xs
rotacionarEsquerda n (x:xs) = rotacionarEsquerda (n-1) (xs ++ [x])

main = do
    print $ rotacionarEsquerda 0 "asdfg"
    print $ rotacionarEsquerda 1 "asdfg"
    print $ rotacionarEsquerda 3 "asdfg"
    print $ rotacionarEsquerda 4 "asdfg"