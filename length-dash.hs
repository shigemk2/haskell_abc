-- 再実装
length' [] = 0
length'(_:xs) = 1 + length' xs

take' _ []= []
take' 0 _ = []
take' n (x:xs) = x : take' (n-1) xs

drop' _ []= []
drop' 0 xs = xs
drop' n (_:xs) = drop'(n-1) xs

reverse'[] = []
reverse'(x:xs) = reverse' xs ++ [x]

sum' [] = 0
sum'(x:xs) = x + sum' xs

product' [] = 1
product'(x:xs) = x * product' xs

main = do
  print $ length' [1, 2, 3] -- 長さ
  print $ take' 5 [1, 2, 3] -- 最初n個
  print $ drop' 5 [1, 2, 3] -- 最初n個を落とす
  print $ reverse' [1, 2, 3, 4, 5] -- 逆に並べる
  print $ sum' [1, 2, 3, 4, 5] -- 全部たす
  print $ product' [1, 2, 3, 4, 5] -- 全部かける
