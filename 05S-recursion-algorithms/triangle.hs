soma n = sum [1..n]
line n = [soma (n - 1) + 1 .. soma n]

triangle 0 = []
triangle n = triangle (n - 1) ++ [line n]

main = do
    print $ triangle 5