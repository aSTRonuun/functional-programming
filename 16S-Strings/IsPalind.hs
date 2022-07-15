isPalindrome xs = xs == reverse xs

main = do
    print $ isPalindrome "ana"
    print $ isPalindrome "123aa321"
    print $ isPalindrome "cachorro"