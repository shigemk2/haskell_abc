-- first (x:xs) = x --xsの名前ははなんでもいいので_でよい
first (x:_) = x

main = do
  print $ first [1..5]
  print $ first "abcdef"
