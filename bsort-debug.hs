import Debug.Trace
bubble [x] = [x]
bubble (x:y:zs)
  | x < y     = trace dbg $ y : bubble (x:zs)
  | otherwise = trace dbg $ x : bubble (y:zs)
  where
    dbg = "bubble (" ++ show x ++ ":" ++ show y ++ ":" ++
          show zs ++ ")" ++ " = " ++ show (x:y:zs)

bsort [] = []
bsort xs = trace dbg $ x : bsort xs'
  where
    dbg = "bsort " ++ show xs
    (x:xs') = reverse $ bubble xs

main = do
  print [4, 3, 1, 5, 2]
  print $ bubble [4, 3, 1, 5, 2]
  print $ bsort [4, 3, 1, 5, 2]
