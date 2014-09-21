bswap [x] = [x]
bswap (x:y:zs)
      | x < y = y : bswap(x:zs)
      | otherwise = x : bswap(y:zs)

main = do
  let a = bswap [4,3,1,5,2]
  print a

  let last = length a - 1
      x = a !! last
      xs = take last a
  print (x, xs)

  let (x:xs) = reverse a
  print (x, xs)
