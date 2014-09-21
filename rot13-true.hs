import Data.Char

rot13 "" = ""
rot13 (x:xs) = conv x : rot13 xs
  where
    conv x
         | 'A' <= x && x <= 'Z' = shift x 'A'
         | 'a' <= x && x <= 'z' = shift x 'a'
         | otherwise = x
    shift x a = chr ((ord x - ord a + 13) `mod` 26 + ord a)

main = do
  let hello13 = rot13 "Hello, world!"
  print $ hello13
  print $ rot13 hello13
