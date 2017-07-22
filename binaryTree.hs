data Tree x = Node x (Tree x) (Tree x)
            | Empty
            deriving (Show)


tree1 = 
    Node "Parent" 
        (Node "Left child" Empty Empty)
        (Node "Right child" Empty Empty)


tree2 =
    (Node 10
        (Node 5
            (Node 2 Empty Empty)
            (Node 7 
                (Node 6 Empty Empty)
                Empty
            )
        )
        (Node 15
            (Node 12 Empty Empty)
            (Node 18
                (Node 16 Empty Empty)
                (Node 20 Empty Empty)
            )
        )
    )