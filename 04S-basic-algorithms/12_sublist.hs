sublist init' end' xs =  drop init . take end $ xs
    where init = if init' < 0 then  init' `mod` length xs else init'
          end = if end' < 0 then end' `mod` length xs else end'

main = do
    print $ sublist 1 3 [0,1,2,3,4,5,6,7,8,9,10]
    print $ sublist 0 11 [0,1,2,3,4,5,6,7,8,9,10]
    print $ sublist 2 8 [0,1,2,3,4,5,6,7,8,9,10]
    print $ sublist 2 (-2) [0,1,2,3,4,5,6,7,8,9,10]
    print $ sublist (-4) (-2) [0,1,2,3,4,5]
    print $ sublist (-10) (-1) [0,1,2,3,4,5,6,7,8,9,10]