maioresQue y [] = []
maioresQue y (x:xs) = if x > y then x:maioresQue y xs else maioresQue y xs