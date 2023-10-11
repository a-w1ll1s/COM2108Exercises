import Data.Char
--Ceaser cipher for encoding one character - from slides

let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr (ord 'a' + n)

shift :: Int -> Char -> Char
shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
          | otherwise = c
--

mapEncode :: Int -> String -> String
mapEncode a xs = map (shift a) xs

listEncode :: Int -> String -> String
listEncode a xs = [shift a x | x<-xs]

recurseEncode :: Int -> String -> String
recurseEncode a [] = []
recurseEncode a (x:xs) = shift a x :recurseEncode a xs 