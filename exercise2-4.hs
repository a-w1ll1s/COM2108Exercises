eucliDistance :: (Double, Double) -> (Double, Double) -> Double
eucliDistance (a,b) (c,d) = sqrt (square (c-a) + square (d-b))

square :: Double -> Double
square num = num*num