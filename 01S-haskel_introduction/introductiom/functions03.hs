-- compreensao de lista : listMap
cList = [x * 2 | x <- [1..10]]

-- compreensao de lista com predicado : filterMap
cListFilter = [x * 2 | x <- [1..10], x*2 >= 12]

-- odd retorna True se o numero é impar, False caso contrario
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

length' xs = sum [1 | x <- xs]

-- tuplas
zipList = zip [1..5] ["um", "dois", "tres", "quatro", "cinco"]