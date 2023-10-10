indices :: Eq a => a -> [a] -> [Int]
indices a xs = [n | (y, n) <- zip xs [0..], a==y]