fibonacci n
          | n == 0 = 0
          | n == 1 = 1
          | n == 2 = 1
          | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

main = do
    print $ fibonacci 0
    print $ fibonacci 1
    print $ fibonacci 2
    print $ fibonacci 3
    print $ fibonacci 4
    print $ fibonacci 5
    print $ fibonacci 6
    print $ fibonacci 7
    print $ fibonacci 8
