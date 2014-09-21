-- bubble 0 xs = [xs]
-- bubble n xs
--        | n < 0     = [xs]
--        | xs !! n < xs !! n-1 = y:x:ys
--        | otherwise = bubble x ys :
bswap [x] = [x]
bswap (x:y:zs)
      | x < y = y : bswap(x:zs)
      | otherwise = x : bswap(y:zs)

a = [4, 6, 9, 8, 3]
main = do
  print $ bswap [4,3,1,5,2]
