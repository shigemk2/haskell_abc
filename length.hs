main = do
  print $ length [1, 2, 3] -- 長さ
  print $ take 2 [1, 2, 3] -- 最初n個
  print $ drop 2 [1, 2, 3] -- 最初n個を落とす
  print $ reverse [1, 2, 3, 4, 5] -- 逆に並べる
  print $ sum [1, 2, 3, 4, 5] -- 全部たす
  print $ product [1, 2, 3, 4, 5] -- 全部かける
