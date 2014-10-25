import Debug.Trace

test [x] = [x]
test (x:xs) = trace dbg $ x:y:ys
    where
      dbg = show x ++ ":" ++ show y ++ ":" ++ show ys
      (y:ys) = test xs
-- test (x:xs) = x:y:ys
--     where
--       (y:ys) = test xs

main = do
  print $ test [1..5]
