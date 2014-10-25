msplit x =
    take key x
    where
      key = (div (length x - 1) 2) + 1
main = do
  print $ msplit [1,2,3,4,5,6]
