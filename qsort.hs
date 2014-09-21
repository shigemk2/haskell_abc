-- リストの最初の要素4を基準に3つの部分に分けます
qsort []     = []
qsort (n:xs) = qsort lt ++ [n] ++ qsort gteq
    where
        lt   = [x | x <- xs, x <  n]
        gteq = [x | x <- xs, x >= n]

main = do
    print $ qsort [11, 4, 6, 9, 8, 3, 5, 1, 7, 2]
