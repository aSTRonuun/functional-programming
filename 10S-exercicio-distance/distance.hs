import Data.List
import Data.Maybe
import Data.Char

-- retorna o subvetor incluindo o elemento posição índice e lim elementos a esquerda e a direita
neib :: [a] -> Int -> Int -> [a]
neib xs index lim = drop  (index - lim) (take (index + lim + 1) xs)

-- verifica se o valor existe no vetor
exists :: Eq a => a -> [a] -> Bool
exists y xs = elem y xs

-- -- converte de digito para char
dig2char :: (Eq a, Num a, Enum a) => a -> Char
dig2char dig = chr (fromEnum dig + fromEnum '0')

-- insere esse valor nesse index e retorna o novo vetor resultante
set :: String -> Int -> Char -> String
set xs index value = take index xs ++ [value] ++ drop (index + 1) xs

-- verifica se esse valor pode ser inserido nesse índice
fit :: (String, Int) ->  Int -> Int -> Bool
fit (xs, lim) index value = not (exists (dig2char value) (neib xs index lim))

-- pega os indexes de todos os .
getHoles :: String -> [Int]
getHoles xs = [i | i <- [0..length xs - 1], xs !! i == '.'] 

fitList :: String -> Int -> Int -> [Int]
fitList xs lim index = [i | i <- [0..lim], fit (xs, lim) index i]

-- tenta resolver o problema para essa posição
-- se é possível resolver, retorna Just resposta, senão Nothing
-- problema (xs, lim)
-- holes: lista de posições a serem preenchidas
-- hindex: posicao atual no vetor de holes
solve :: (String, Int) -> [Int] -> Int -> Maybe String
solve (xs, lim) holes hindex
    | hindex == length holes = Just xs
    | null fList = Nothing
    | otherwise = if null answers then Nothing else head answers
    where
        index = holes !! hindex
        fList = fitList xs lim index
        branches = [solve (set xs index (dig2char v), lim) holes (hindex + 1) | v <- fList]
        answers = [Just x | Just x <- branches]

-- prepara a entrada para a função recursiva de resolução
mainSolver :: String -> Int -> String
mainSolver xs lim = fromJust (solve (xs, lim) (getHoles xs) 0)

main :: IO ()
main = do
    xs <- getLine
    lim <- readLn :: IO Int
    putStrLn $ mainSolver xs lim


------------------------------------------------------------------------------------
-- Testes para lhe auxiliar a construir a solução de forma mais segura
------------------------------------------------------------------------------------


neibTest :: IO ()
neibTest = do
    print $ neib "abcdef.." 0 2
    print $ neib "abc.def"  3 1
    print $ neib "abc.def"  3 2
    print $ neib "abc.def"  1 2 
    print $ neib "abc.def"  5 3

dig2charTest :: IO ()
dig2charTest = do
    print $ map dig2char [0..9]

setTest :: IO ()
setTest = do
    print $ set "12345" 0 '9' == "92345"
    print $ set "12345" 1 '9' == "19345"
    print $ set "12345" 4 '9' == "12349"

fitTest :: IO ()
fitTest = do -- (fit ("12.345", 1) 2) se torna uma função curry faltando só uma var que seria o valor recebido do vetor
    print $ map (fit ("12.345", 1) 2) [1,2,3,4,5] == [True, False, False, True, True]
    print $ map (fit ("12.345", 2) 2) [1,2,3,4,5] == [False, False, False, False, True]
    print $ map (fit ("12.345", 3) 2) [1,2,3,4,5] == [False, False, False, False, False]
    print $ map (fit ("12345.", 4) 5) [1,2,3,4,5] == [True, False, False, False, False]

getHolesTest :: IO ()
getHolesTest = do
    print $ getHoles "12.3.." == [2,4,5]
    print $ getHoles "12.3.4" == [2,4]
    print $ getHoles "...3.4" == [0,1,2,4]

mainTest :: IO ()
mainTest = do
    print $ mainSolver "01.2." 3 == "01320"
    print $ mainSolver ".0..231..5" 5 == "1045231045"
    print $ mainSolver "2..0..............3..........." 3 == "213021302130213021302130213021"
    print $ mainSolver "0..32..41." 5 == "0413250413"
    print $ mainSolver "9....7.620.5318....." 9 == "95318746209531874620"