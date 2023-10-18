--map (+3) xs
map1 xs = [x+3 | x<-xs]

--filter (>7) xs
filter1 xs = [x | x<-xs, x>7]

--concat (map (\x -> map (\y -> (x,y)) ys) xs)
concat1 xs ys = [ (x,y) | x<-xs, y<-ys]

--filter (>3) (map (\(x,y) -> x+y) xys)
filter2 xys = [(x,y) | (x,y)<-xys, x+y>3]
