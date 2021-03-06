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

removeEven xs = [ x | x <- xs, (mod x 2) /= 0]

threeArgsFunc :: Int -> Int -> Int -> Int
threeArgsFunc x y z = x + y + z

twoArgsFunc :: Int -> Int -> Int
twoArgsFunc x y = (threeArgsFunc 1) x y

oneArgFunc :: Int -> Int
oneArgFunc x = (threeArgsFunc 1 2) x
