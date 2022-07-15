myreapeat n = [n] ++ myreapeat (n)

main = do
    print ((take 3 $ myreapeat 4) == [4,4,4])
    print ((take 2 $ myreapeat 5) == [5,5])