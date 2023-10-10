fact :: Int -> Int 
fact 0 = 1
fact n | n < 0 = error "negative" 
       | otherwise = n * (fact (n-1))