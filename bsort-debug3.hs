import Debug.Trace

bubble _ [x] = [x]
bubble n (x:xs)
    | y < x     = y:x:ys
    | otherwise = x:y:ys
    where
      spc = replicate (n * 2) ' '
      dbg = spc ++ "bubble (" ++ show x ++ ":" ++ show xs ++ ")"
      (y:ys) = trace dbg $ bubble (n + 1) xs

bsort _ [] = []
bsort n xs = y : bsort (n + 1) ys
  where
    spc = replicate (n * 2) ' '
    dbg = spc ++ "bsort " ++ show xs
    (y:ys) = trace dbg $ bubble n xs

main = do
  -- print $ bubble [10,2,4,5,1,3,6,9,8,7]
  -- print $ bubble [4, 3, 1, 5, 2]
  -- print $ bsort 0 [10,2,4,5,1,3,6,9,8,7]
  -- print $ bsort 0 [4, 3, 1, 5, 2]
  print $ bsort 0 [3,8,15,14,1,2,4,9,13,7,6,11,5,8,10,12]
