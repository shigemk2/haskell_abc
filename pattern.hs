-- 関数内の全体をifで切り分ける代わりに、特定の引数を指定して関数を分割定義
f 1 = "1"
-- f a = "?"
f _ = "?"

main = do
  print $ f 0
  print $ f 1
