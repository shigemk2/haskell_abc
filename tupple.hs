-- リストと違って全部が同じ型である必要はない
addsub x y = (x + y, x - y)
main = do
  print $ addsub 1 2

