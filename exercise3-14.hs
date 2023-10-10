{-
(\x -> x+1) -- increment a value
(\x -> x-1) -- decrement a value
(\x -> length [y | y <- [2..x-1], x `mod` y == 0] == 0) -- check if a value is prime 
-}