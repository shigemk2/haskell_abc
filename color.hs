data Color = Blue | Red | Green | White | Miku | Magenta | Brown
    deriving Show

toInt Blue    = 1
toInt Red     = 2
toInt Magenta = 3
toInt Green   = 4
toInt Miku    = 5
toInt Brown   = 6
toInt White   = 7

toColor 1 = Blue
toColor 2 = Red
toColor 4 = Green
toColor 7 = White

mix x y = toColor ((toInt x) + (toInt y))

main = do
    print Blue
    print Red
    print $ mix Blue Red
