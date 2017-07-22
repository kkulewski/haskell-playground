data Tree x = Node x (Tree x) (Tree x)
            | Empty
            deriving (Show)


tree1 = 
    Node "Parent" 
        (Node "Left child" Empty Empty)
        (Node "Right child" Empty Empty)