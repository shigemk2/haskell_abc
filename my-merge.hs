msplit x =
    x !! key2
    where
      key1 = length x - 1
      key2 = div key1 2
main = do
  print $ msplit [1,2,3,4,5,6]
