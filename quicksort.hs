quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerOrEqual = [a | a <- xs, a <= x]
        larger = [a | a <- xs, a > x]
    in quicksort smallerOrEqual ++ [x] ++ quicksort larger

main = do
    print $ quicksort [11, 4, 6, 9, 8, 3, 10, 5, 1, 7, 2]
    print $ quicksort "i am shige"
