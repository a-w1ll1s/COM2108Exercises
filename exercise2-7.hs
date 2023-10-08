import Data.Char -- for capitalizeStart

stack :: [a] -> [a]
stack (x:xs) = xs++[x]

range:: (Ord a, Num a) => a -> Bool
range a | a > 10 = False
        | a < 0 = False
        | otherwise = True

addc :: Char -> String -> String
addc c s = c:s

halves :: Integral a => [a] -> [a]
halves xs = map (`div` 2) xs

capitalizeStart :: String -> String
capitalizeStart (x:xs) = toUpper x :xs
