triangles xs = [(a, b, c) | a <- xs, b <- xs, c <- xs, a + b > c && b + c > a && a + c > b && a /= b && b /= c && c /= a]


main = do
