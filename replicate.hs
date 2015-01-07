replicate' :: Int -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x : replicate' (n-1) x

main = do
    print $ replicate' 4 3
    -- 文字列→リストのリストになる
    print $ replicate' 4 "a"
    -- char型→文字列になる
    print $ replicate' 4 'a'
