reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

main = do
  -- print $ reverse' [1..10000]
  print $ reverse [1..1000000]
