-- faz um filtro na lista para retorna uma sublista com todos os elementos True, se a quantidade de elementos da lista for impar
-- retorna True se nao retorna False  
paridade xs = odd (length [x | x <-xs, x == True])

main = do
    print $ paridade []
    print $ paridade [True,True,False]
    print $ paridade [True,False,True,False,True]
    print $ paridade [False,True,False]