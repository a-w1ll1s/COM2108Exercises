safeTail :: [a] -> [a]

safeTail xs | length xs > 0 = tail xs
            | length xs <= 0 = xs
            | otherwise = xs