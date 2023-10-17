data Tree a = Leaf a | Node (Tree a) (Tree a) deriving Show 

balance :: [a] -> Tree a
balance [] = error "Empty list"
balance [x] = Leaf x
balance [m,n] = Node (balance [m]) (balance [n])
balance xs = Node (balance left) (balance right)
    where
        (left,right) = splitList xs

splitList :: [a] -> ([a],[a])
splitList xs = (left,right)
    where
        left = take (((length xs + length xs `mod` 2) `div` 2)-1) xs
        right = drop ((length xs + length xs `mod` 2) `div` 2) xs