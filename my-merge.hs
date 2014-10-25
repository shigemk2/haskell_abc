mtake x =
    take key x
    where
      key = (div (length x - 1) 2) + 1
mdrop x =
    drop key x
    where
      key = (div (length x - 1) 2) + 1
main = do
  print $ mtake x
  print $ mdrop x
  where
    x = [1,2,3,4,5,6]

