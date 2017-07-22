data Tree x = Node x (Tree x) (Tree x)
            | Empty
            deriving (Show)