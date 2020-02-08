import Foundation

func insertionSort(array: [Int]) -> [Int] {
    var sourceArray = array
    
    for i in 1..<sourceArray.count {
        var j = i
        
        while (j > 0) && (sourceArray[j] < sourceArray[j-1]) {
            sourceArray.swapAt(j, j-1)
            j -= 1
        }
    }
    
    return sourceArray
}

insertionSort(array: [2,4,6,2,35,7,34,784,23,5,7]);
