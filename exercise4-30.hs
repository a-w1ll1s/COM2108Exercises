data Shape = Circle Float | Rect Float Float deriving Show

scale:: Float -> Shape -> Shape
scale a (Circle r) = Circle (r*a)
scale a (Rect l w) = Rect (l*a) (w*a)