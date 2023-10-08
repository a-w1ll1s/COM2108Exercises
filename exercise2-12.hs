luhnDouble :: Int -> Int
luhnDouble x | x*2 > 9 = x*2-9
             | x*2 <= 9 = x*2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = (d + luhnDouble c + b + luhnDouble a) `mod` 10 == 0 