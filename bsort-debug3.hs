import Debug.Trace

bubble [x] = [x]
bubble (x:xs)
    | y < x     = y:x:ys
    | otherwise = x:y:ys
    where
      (y:ys) = bubble xs

bsort [] = []
bsort xs = y : bsort ys
  where
    (y:ys) = bubble xs

main = do
  print $ bsort [3,8,15,14,1,2,4,9,13,7,6,11,5,8,10,12]
