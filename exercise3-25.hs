perfects :: Int -> [Int]
perfects a = [x | x<-[1..a], x == sum [y | y<-[1..x-1], x `mod` y == 0]]

