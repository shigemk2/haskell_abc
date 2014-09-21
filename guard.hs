fact n
    | n == 1    = 1
    | otherwise = n * fact (n - 1)

main = do
    print $ fact 10
