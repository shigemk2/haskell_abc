repeat' :: a -> [a]
repeat' x = x : repeat' x

take' :: Int -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

main = do
  -- print $ repeat' 4 -- 無限ループ
  print $ take 3 $ repeat' 4 -- 遅延評価
