zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

main = do
  print $ zip' [1,2,3] [7,8] -- [(1,7),(2,8)]
