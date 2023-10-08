roots :: (Float, Float, Float) -> (Float, Float)
roots (a,b,c) = if d < 0 then error "no roots" else (x, y) 
                    where 
                        x = e + sqrt d / (2*a)
                        y = e - sqrt d / (2*a)
                        d = b*b - 4*a*c
                        e = -b / (2*a) 