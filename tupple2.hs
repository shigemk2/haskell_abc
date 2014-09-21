addsub x y = (x+y, x-y)
a = addsub 1 2
(a1, a2) = addsub 3 5

main = do
  print a
  print a1
  print a2
