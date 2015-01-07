elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
      | a == x = True -- 条件に引っかかったらここで終了
      | otherwise = a `elem'` xs -- 中置

main = do
  print $ elem' 4 [1,2,3]
  print $ elem' 3 [1,2,3]
