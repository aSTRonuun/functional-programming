ocorrencia y [] = 0
ocorrencia y (x:xs) = (if y == x then 1 else 0) + ocorrencia y xs

main = do 
    print(ocorrencia 1 [])
    print(ocorrencia 4 [4])
    print(ocorrencia 4 [5])
    print(ocorrencia 4 [4,4])
    print(ocorrencia 2 [4,4])
    print(ocorrencia 5 [4,5,2,1,5,5,9])