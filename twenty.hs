-- twenty x y z = (x*x + y*y == z*z && x+y+z < 20, x*x + y*y == z*z && x+y+z < 20, x*x + y*y == z*z && x+y+z < 20)

-- main = do
--   print twenty 
main = do
  print[(a,b,c)
        | a <- [1..20], b <- [1..20], c <- [1..20]
        , a * a + b * b == c * c
        ]
