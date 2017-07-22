splitLine :: String -> [String]
splitLine line = words line

countWords :: String -> Int
countWords line = length (splitLine line)

getWordCount :: String -> String
getWordCount input = show (countWords input)

main = interact getWordCount
