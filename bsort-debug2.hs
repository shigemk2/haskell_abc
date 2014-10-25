import Debug.Trace

bubble [x] = [x]
bubble (x:xs)
    | y < x     = y : bubble (x:ys)
    | otherwise = x : bubble (y:ys)
    where
      (y:ys) = bubble xs
main = do
  print $ bubble [3,8,15,14,1,2,4,9,13,7,6,11,5,8,10,12]
