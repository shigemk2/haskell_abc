bswap [x] = [x]
bswap (x:xs)
    | x > y     = y:x:ys
    | otherwise = x:y:ys
    where
        (y:ys) = bswap xs

bsort [] = []
bsort xs = y : bsort ys
    where
        (y:ys) = bswap xs

main = do
    print $ bswap [4, 3, 1, 5, 2]
    print $ bsort [4, 3, 1, 5, 2]
    print $ bsort [5, 4, 3, 2, 1]
    print $ bsort [4, 6, 9, 8, 3, 5, 1, 7, 2]
