maximum1 :: (Ord a) => [a] -> a
maximum1 xs = foldr1 max xs