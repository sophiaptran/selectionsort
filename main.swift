var words = [String]()
var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!)
    line = readLine()
}

var tempArray = words

var passCount = 0
var tempCount = 0
var totalCount = 0
var control = 0

func swap(words: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = words[firstIndex]
    words[firstIndex] = words[secondIndex]
    words[secondIndex] = temp

    tempCount += 1
}

print("Pass: \(passCount), Swaps: \(tempCount)/\(totalCount), Array: \(words)")

func sort (words: inout[String]) {
    for index in 0..<words.count - 1 {
        var swapIndex = index

        tempCount = 0
        var minIndex = index

        passCount += 1
        
        for swapIndex in index + 1..<words.count {
            if words[swapIndex] < words[minIndex] {
                minIndex = swapIndex
            }

        }
        
        swap(words: &words, firstIndex: index, secondIndex: minIndex)
        
        swapIndex -= 1
        totalCount += 1
        
        print("Pass: \(passCount), Swaps: \(tempCount)/\(totalCount), Array: \(words)")

        
        
    }   
}

sort(words: &tempArray)
