second xs = head (tail xs) --[a] -> a
swap (x,y) = (y,x) --(b, a) -> (a, b)
pair x y = (x,y) --a -> b -> (a, b)
double x = x*2 --Num a => a -> a
palin xs = reverse xs == xs --Eq a => [a] -> Bool
twice f x = f (f x) --(t -> t) -> t -> t