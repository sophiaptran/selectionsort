

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["paper", "tree", "apple", "book", "sun"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

var tempArray = unsortedStrings

var passCount = 0
var tempCount = 0
var totalCount = 0
var control = 0

func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = strings[firstIndex]
    strings[firstIndex] = strings[secondIndex]
    strings[secondIndex] = temp

    tempCount += 1
}

print("Pass: \(passCount), Swaps: \(tempCount)/\(totalCount), Array: \(unsortedStrings)")

func sort (strings: inout[String]) {
    for index in 0..<strings.count - 1 {
        var swapIndex = index

        tempCount = 0
        var minIndex = index

        passCount += 1
        
        for swapIndex in index + 1..<strings.count {
            if strings[swapIndex] < strings[minIndex] {
                minIndex = swapIndex
            }

        }
        
        swap(strings: &strings, firstIndex: index, secondIndex: minIndex)
        
        swapIndex -= 1
        totalCount += 1
        
        print("Pass: \(passCount), Swaps: \(tempCount)/\(totalCount), Array: \(strings)")

        
        
    }   
}

sort(strings: &tempArray)
