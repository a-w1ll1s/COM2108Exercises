pyths :: Int -> [(Int, Int, Int)]
pyths xs = [(a,b,c) | a<-[1..xs], b<-[1..xs], c<-[1..xs], (a^2)+(b^2) == (c^2)]