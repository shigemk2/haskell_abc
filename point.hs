data Point = Point Int Int deriving Show

offset (Point x1 y1) (Point x2 y2) =
    Point (x1 + x2) (y1 + y2)

main = do
    print a
    print b
    print c
    where
        a = Point 2 3
        b = Point 1 1
        c = offset a b
