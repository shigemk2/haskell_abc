take' :: Int -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

main = do
  print $ take' 3 [5,4,3,2,1] -- [5,4,3]
