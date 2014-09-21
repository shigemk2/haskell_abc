import Data.Char

rot13 str = chr ((ord str) + 13)

main = do
    print [rot13 'A', rot13 'B', rot13 'C', rot13 'D', rot13 'E']
    print [rot13 x | x <- "abcde"]
    print [rot13 x | x <- "I am shigemk2"]
