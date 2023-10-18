altMap :: (a->b) -> (a->b) -> [a] -> [b]
altMap func1 func2 [] = []
altMap func1 func2 [x] = [func1 x]
altMap func1 func2 (a:b:xs) = func1 a : func2 b : altMap func1 func2 xs