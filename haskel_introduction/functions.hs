-- funcoes de arrays 
headValue = head[1..9] -- front() 1
lastValue = last[1..9] -- back() 9
tailValue = tail[1..9] -- [2..9] 
takeValue = take 3 [1..9] --[1..9] retorna os 3 primeiros
dropValue = drop 3[1..9] --[4..9] retorna tudo que nao é os 3 primeiros

elemBool = elem 5 [1..9] -- True retorna se o elemento esta na lista ou nao
listNull = null [] -- True retorn if a list is empty or not
lenghtValue = length [1..9] -- return length of list
listReplicated = replicate 9 0 -- retorna uma lista de 9 elementos 0
listReverse = reverse [1..9] -- retorna a lista passada de forma invertida

tupleList = splitAt 3 [11..19] -- retorna uma tupla com duas listas a primeira do 11 ao 13 e outra tudo o que for esses numeros
-- ([11..13], [14..19])
listFirst = fst tupleList -- retorna o primeiro elemento da tupla [11..13]
listSecond = snd tupleList -- retorna o segundo elemento da tupla [14..19]
listConcatend = concat [[11..13], [14..19]] -- [11..19] recebe uma lista de lista e concatena todas as listas da list maior

sumValue = sum [1..9] -- retorna a soma dos elemetos
max = maximum [1..9] -- 9 retorna o maior valor da lista
min = minimum [1..9] -- 1 retorna o menor valor da lista

listMap = [x * 2 | x <- [1..5]] -- pecorre a lista de 1 a 5 e depois executa para todo x que pecorreu a acao x * 2

listFilter = [x * 2 | x <- [1..9], x > 5] -- para cada x de 1 a 5 se x > 5 realiza a açao de multiplicar por 2