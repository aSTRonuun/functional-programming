rotacionarDireita 0 xs = xs
rotacionarDireita n xs = rotacionarDireita (n-1) ((last xs) : (init xs))

main = do
    print $ rotacionarDireita 0 "asdfg"
    print $ rotacionarDireita 1 "asdfg"
    print $ rotacionarDireita 2 "asdfg"
    print $ rotacionarDireita 3 "asdfg"
    print $ rotacionarDireita 4 "asdfg"
    print $ rotacionarDireita 5 "asdfg"