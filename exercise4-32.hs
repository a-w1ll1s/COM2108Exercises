data Tree a = Leaf a | Node a (Tree a) (Tree a) deriving Show 

depth :: Tree a -> Int
depth (Leaf _) = 0
depth (Node _ left right) = 1 + max (depth left) (depth right)

isComplete :: Tree a -> Bool
isComplete (Leaf _) = True
isComplete (Node _ left right) | depth left == depth right = True
                               | otherwise = False