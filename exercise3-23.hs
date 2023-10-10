grades :: [(String, Int)] -> (Int, Int, Int, Int, Int, Int)
grades xs = (length (filter (\(_,x) -> x<30) xs), length (filter (\(_,x) -> x>=30 && x<40) xs), length (filter (\(_,x) -> x>=40 && x<50) xs), length (filter (\(_,x) -> x>=50 && x<60) xs), length (filter (\(_,x) -> x>=60 && x<70) xs), length (filter (\(_,x) -> x>=70) xs))
