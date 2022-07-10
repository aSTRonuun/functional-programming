import Control.Monad ( replicateM )

toInt :: String -> Int
toInt string = read string  

desempacota :: String -> (Int, Int)
desempacota line = (a, b)
    where
        [a, b] = map toInt . words $ line

classificou (int, (a, b)) = a >= && b >= 10

processa vet = 
    where
        tuplas = map desempacota vet
        grude = zip [0..] tuplas
        classificados = filter classificou grude

main :: IO ()
main = do
    print $ processa ["8 11", "10 15"]
    -- print $ processa ["9 12", "11 13", "10 11"] == "2"
    -- print $ processa ["12 15", "16 14", "10 9"] == "1"
    -- print $ processa ["12 15", "20 23", "10 9", "35 35"] == "3"
    -- print $ processa ["10 8", "9 13"] == "sem ganhador"
    -- print $ processa ["8 9", "12 7"] == "sem ganhador"
    -- print $ processa ["10 9", "15 19"] == "1"
    -- print $ processa ["9 8", "9 12", "12 15", "18 19"] == "3"