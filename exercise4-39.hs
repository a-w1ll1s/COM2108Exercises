import Data.List (group, sort)
newtype Bag a = Bag [(a, Int)] deriving Show

listToBag :: Eq a => Ord a => [a] -> Bag a
listToBag xs = Bag (map (\ys -> (head ys, length ys)) (group(sort xs)))

bagEqual :: Eq a => Bag a -> Bag a -> Bool
bagEqual (Bag a) (Bag b) = a == b

bagInsert :: Eq a => Bag a -> a -> Bag a
bagInsert (Bag xs) a = Bag (insert xs a)
    where 
        insert [] a = [(a,1)]
        insert ((y, count):ys) a | a==y = (y, count+1):ys
                                 | otherwise = (y,count): insert ys a

bagSum :: Ord a => Bag a -> Bag a -> Bag a
bagSum (Bag xs) (Bag ys) = Bag (sum xs ys)
    where
        sum [] ys = ys
        sum xs [] = xs
        sum ((xitem, xcount):xs) ((yitem, ycount):ys) | xitem == yitem = (xitem, xcount+ycount) : sum xs ys
                                                      | xitem < yitem = (xitem, xcount) : sum xs ((yitem,ycount):ys)
                                                      | otherwise = (yitem,ycount) : sum ((xitem,xcount):xs) ys

bagIntersection :: Ord a => Bag a -> Bag a -> Bag a
bagIntersection (Bag xs) (Bag ys) = Bag (intersection xs ys)
    where 
        intersection [] ys = []
        intersection xs [] = []
        intersection ((xitem,xcount):xs) ((yitem,ycount):ys) | xitem==yitem = (xitem, min xcount ycount):intersection xs ys
                                                             | xitem<yitem = intersection xs ((yitem,ycount):ys)
                                                             | otherwise = intersection ((xitem,xcount):xs) ys