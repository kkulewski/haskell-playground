splitLine :: [Char] -> [[Char]]
splitLine line = words line

countWords :: [Char] -> Int
countWords line = length (splitLine line)

getWordCount :: [Char] -> [Char]
getWordCount input = show (countWords input)

main = interact getWordCount
