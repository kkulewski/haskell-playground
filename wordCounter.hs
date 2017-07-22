splitLine line = words line

countWords line = length (splitLine line)

getWordCount input = show (countWords input)

main = interact getWordCount
