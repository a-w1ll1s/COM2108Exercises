[x ^ 2 | x <- [1..20], even x] -- one way

map (x ^ 2) (filter even [1..20]) -- another way