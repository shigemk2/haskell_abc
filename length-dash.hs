length' [] = 0
length'(_:xs) = 1 + length' xs

take' 0 xs = []
take' n xs = take' (n-1) xs ++ [n]

drop' 0 xs = xs
drop' n (x:xs) = drop'(n-1) xs

reverse'[] = []
reverse'(x:xs) = reverse' xs ++ [x]

sum' [] = 0
sum'(x:xs) = x + sum' xs

product' [] = 1
product'(x:xs) = x * product' xs

main = do
  print $ length' [1, 2, 3] -- 長さ
  print $ take' 2 [1, 2, 3] -- 最初n個
  print $ drop' 2 [1, 2, 3] -- 最初n個を落とす
  print $ reverse' [1, 2, 3, 4, 5] -- 逆に並べる
  print $ sum' [1, 2, 3, 4, 5] -- 全部たす
  print $ product' [1, 2, 3, 4, 5] -- 全部かける
