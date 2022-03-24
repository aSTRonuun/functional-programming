add x y = x + y -- funcoes com parametos (sem parenteses e sem retun)

sumValue = 5 `add` 10 -- quando a funcao tem apenas dois parametros ela pode se tornar infixada com os operadoes : `[function]`


-- funcao fibonacci onde os caracteres | sao equivalentes aos comandos ifs (guardas)
fib x 
    | x < 2 = 1
    | otherwise = fib (x - 1) + fib (x - 2)

-- funcao conta numero de digitos recursivamente
ndig x
    | x < 10 = 1
    | otherwise = 1 + ndig(x `div` 10)

-- padroes em listas
-- calcula recursivamente o tamnho de uma lista
tamanho [] = 0
tamanho (x:xs) = 1 + tamanho xs

-- retorna o ultimo elemento da lista
ultimo (x:[]) = x 
ultimo (x:xs) = ultimo xs

-- retona o penultimo elemento da lista
penultimo (x:[y]) = x
penultimo (x:xs) = penultimo xs

-- retona o elemento no indice x
enesimo 0 (x:xs) = x
enesimo index (x:xs) = enesimo (index - 1) xs

-- funcoes parsiais e composicao
soma a = (+) a

-- composicoes
acoes = head. (\x -> x:[]). (4 +). (2 *)