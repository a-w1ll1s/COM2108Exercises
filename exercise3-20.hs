euclid :: Int -> Int -> Int 
euclid a 0 = a
euclid 0 b = b
euclid a b | a == b = a
           | a < b = euclid (b `mod` a) a
           | a > b = euclid b (a `mod` b)

