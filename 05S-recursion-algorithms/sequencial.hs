-- sequencial 4 4 -> [4,5,6,7]
sequencial 0 x = []
sequencial 1 x = [x]
sequencial n x = x : sequencial (n-1) (x+1) 

main = do 
    print $ sequencial 0 2
    print $ sequencial 1 2
    print $ sequencial 3 5
    print $ sequencial 4 4