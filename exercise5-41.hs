correctOrder :: (Ord b) => (a,b) -> (a,b) -> Bool
correctOrder (_,x) (_,y) | x <= y = True
                         | otherwise = False