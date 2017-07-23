data Tree x = Node x (Tree x) (Tree x)
            | Empty
            deriving (Show)

data AltTree x = AltNode x (Maybe (AltTree x)) (Maybe (AltTree x))
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
    
altTree1 = 
        AltNode 5 
            (Just (AltNode 3 Nothing Nothing)) 
            (Just (AltNode 7 Nothing Nothing))
            
            
altTree2 = 
        (AltNode "P" 
            (Just (AltNode "LC"
                    (Just (AltNode "LLGC" Nothing Nothing)) 
                    (Just (AltNode "RLGC" Nothing Nothing))
                  )
            ) 
            (Just (AltNode "RC" 
                    (Nothing) 
                    (Nothing)
                  )
            )
        )