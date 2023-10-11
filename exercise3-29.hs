{- 
[f x | x<-xs, p x]

can be written as 

map f (filter p xs)
-}