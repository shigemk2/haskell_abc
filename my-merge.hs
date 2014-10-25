msplit x =
    -- take key x
    drop key x
    where
      m1 = take key x
      m2 = drop key x
      key = (div (length x - 1) 2) + 1
main = do
  print $ msplit x
  where
    x = [1,2,3,4,5,6]

