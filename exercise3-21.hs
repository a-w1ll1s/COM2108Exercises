sum2 :: Num a => [a] -> a
sum2 [] = 0
sum2 (x:xs) = x + (sum2 xs)

take2 :: Int -> [a] -> [a]
take2 0 xs = []
take2 n (x:xs) = x : take2 (n-1) xs

last2 :: [a] -> a
last2 [a] = a
last2 (x:xs) = last2 xs