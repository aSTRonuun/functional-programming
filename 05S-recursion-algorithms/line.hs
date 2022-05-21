soma n = sum [1..n]
line n = [soma (n - 1) + 1 .. soma n]

main = do
    print $ line 1
    print $ line 2
    print $ line 3