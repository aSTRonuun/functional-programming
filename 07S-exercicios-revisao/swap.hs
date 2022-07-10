-- swap [1..10] 2 4 = [1,2,4,3,5,6,7,8,9,10]

split' xs pos = (take pos xs, xs !! pos, drop (pos + 1) xs)

swap xs p1 p2 = inicio ++ [ep2] ++ meio ++ [ep1] ++ fim
    where (inicio, ep1, resto) = split' xs p1
          (meio, ep2, fim) = split' resto (p2 - p1 - 1)