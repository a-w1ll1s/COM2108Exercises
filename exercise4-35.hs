mystery xs = foldr (++) [] (map sing xs)
    where
        sing x = [x]

{-
Instead of 1:(2:(3:[]))
it creates [1]++([2]++([3]++[]))
So no difference
-}