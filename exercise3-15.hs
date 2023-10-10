choose :: (Bool, Num a) => [(Bool, a)] -> [(Bool, a)]
choose records = filter (\(x,y) -> x == True && y < 10) records