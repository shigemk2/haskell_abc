import Debug.Trace

bubble _ [x] = [x]
bubble n (x:xs)
    | y < x     = {- trace dbg2 $ -} y : bubble (n + 1) (x:ys)
    | otherwise = {- trace dbg3 $ -} x : bubble (n + 1) (y:ys)
    where
      spc = replicate (n * 2) ' '
      dbg1 = spc ++ "bubble (" ++ show x ++ ":" ++ show xs ++ ")"
      dbg2 = spc ++ "= " ++ show y ++ " : bubble (" ++ show x ++ ":" ++ show ys ++ ")"
      dbg3 = spc ++ "= " ++ show x ++ " : bubble (" ++ show y ++ ":" ++ show ys ++ ")"
      (y:ys) = trace dbg1 $ bubble (n + 1) xs

-- bubble (x:xs) = x:y:ys
--     where
--       (y:ys) = bubble xs

main = do
  -- print $ bubble 0 [10,2,4,5,1,3,6,9,8,7]
  -- print $ bubble 0 [4, 3, 1, 5, 2]
  print $ bubble 0 [3,8,15,14,1,2,4,9,13,7,6,11,5,8,10,12]
