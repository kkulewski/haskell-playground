applyFunction function inputFile outputFile = do
    input <- readFile inputFile
    writeFile outputFile (function input)


