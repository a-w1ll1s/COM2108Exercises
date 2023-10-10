zip2 :: [a] -> [a] -> [(a,a)]
zip2 xs [] = []
zip2 [] ys = []
zip2 (x:xs) (y:ys) = (x,y) : zip2 xs ys