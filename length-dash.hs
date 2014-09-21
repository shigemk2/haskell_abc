length' [] = 0
length'(_:xs) = 1 + length' xs

-- take' n [] = []
-- take' n (x:xs) = 1 + take' xs

-- drop' n [] = []
-- drop' n (x:xs) = 1 + drop' xs

reverse'[] = []
reverse'(x:xs) = reverse' xs ++ [x]

sum' [] = 0
sum'(x:xs) = x + sum' xs

product' [] = 1
product'(x:xs) = x * product' xs

main = do
  print $ length' [1, 2, 3] -- 長さ
  -- print $ take' 2 [1, 2, 3] -- 最初n個
  -- print $ drop' 2 [1, 2, 3] -- 最初n個を落とす
  print $ reverse' [1, 2, 3, 4, 5] -- 逆に並べる
  print $ sum' [1, 2, 3, 4, 5] -- 全部たす
  print $ product' [1, 2, 3, 4, 5] -- 全部かける
