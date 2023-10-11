approxPi :: Double -> (Double, Int)
approxPi a = findApprox 0 a 1

findApprox ::  Double -> Double -> Int -> (Double, Int)
findApprox currentSum tolerance steps | abs((pi / 4) - currentSum) < tolerance = (currentSum*4, steps)
                                      | otherwise = findApprox nextSum tolerance (steps+1) 
                                      where
                                        nextSum = addList (take steps [1,3..])

addList :: [Int] -> Double
addList [] = 0
addList (x:xs) = (1 / fromIntegral x) - addList xs