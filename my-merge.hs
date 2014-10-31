import Debug.Trace

-- 復路で再帰関数
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
      | x < y     = trace dbg1 $ x : merge xs (y:ys)
      | otherwise = trace dbg2 $ y : merge (x:xs) ys
      where
        dbg1 = "x < y " ++ "x: " ++ show x ++ " y: " ++ show y ++ show (x:xs) ++ show (y:ys)
        dbg2 = "otherwise " ++ show (x:xs) ++ show (y:ys)

msort [] = []
msort [x] = [x]
-- 往路で分割
msort xs = merge (msort (take h xs)) (msort (drop h xs))
           where
             h = (length xs) `div` 2

main = do
  print $ msort [4, 6, 9, 8, 3, 5, 1, 7, 2]
