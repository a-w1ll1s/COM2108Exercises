curry1 :: ((a,b) -> c) -> a -> b -> c
curry1 func x y = func (x,y)

uncurry1 :: (a -> b -> c) -> (a,b) -> c
uncurry1 func (x,y) = func x y