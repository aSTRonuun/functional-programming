myreapeat n = [n] ++ myreapeat (n)

myreplicate qtd value = take qtd $ myreapeat value

main = do
    print ((myreplicate 4 0) == [0,0,0,0])
    print ((myreplicate 2 True) == [True,True])
    print ((myreplicate 3 "banana") == ["banana","banana","banana"])

