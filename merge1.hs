mswap [x] = [x]
mswap (x:y:xs)
    | x < y = y : x
    | otherwise = x : y


main = do
    print $ mswap [4, 3]
