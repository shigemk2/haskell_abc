data Color = Blue | Red | Green | White
    deriving Show

toInt Blue    = 1
toInt Red     = 2
toInt Green   = 4
toInt White   = 7

toColor 1 = Blue
toColor 2 = Red
toColor 4 = Green
toColor 7 = White

main = do
    print $ toInt c1
    print $ toInt c2
    print $ toColor $ toInt c1
    print $ toColor $ toInt c2
    where
        c1 = Blue
        c2 = White
