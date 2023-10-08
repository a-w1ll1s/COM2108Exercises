oddItems :: [Int] -> [Int]
oddItems xs = filter d xs
    where 
        d = odd 

