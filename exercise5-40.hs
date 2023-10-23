map1 :: (a -> b) -> [a] -> [b]
map1 f xs = foldr (\x xs -> f x : xs ) [] xs 

filter1 :: (a -> Bool) -> [a] -> [a]
filter1 f xs = foldr (\x xs -> if f x then x : xs else xs) [] xs