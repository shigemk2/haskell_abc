import Data.Char

rot13 str = chr ((ord 'A') + 13)

main = do
    let a = (ord 'A') + 13
    print $ chr a
