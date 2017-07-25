doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

isEven :: Int -> Bool
isEven x = (mod x 2) == 0

greet :: IO ()
greet = do  
    putStrLn "What is your name?"  
    name <- getLine  
    putStrLn ("Hello " ++ name ++ "!") 
    
    
data Maybe' a = Just' a
            | Nothing'
            deriving (Show)
        
x = Just' 5
y = Nothing'

getIntMaybe' :: Maybe' Integer -> Integer
getIntMaybe' x = case x of
    Nothing' -> 0
    Just' value -> value

printMaybe' x = case x of
    Nothing' -> "Nothing is here"
    Just' value -> "There is value: " ++ (show value)


doubleList xs = [ x * 2 | x <- xs]

length' xs = sum [ 1 | _ <- xs]