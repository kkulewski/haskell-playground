import System.Environment (getArgs)

applyFunction function inputFile outputFile = do
    input <- readFile inputFile
    writeFile outputFile (function input)

processFile function = do
    args <- getArgs
    case args of
        [input, output] -> applyFunction function input output
        _ -> putStrLn "Error - two args expected."

main = processFile id
