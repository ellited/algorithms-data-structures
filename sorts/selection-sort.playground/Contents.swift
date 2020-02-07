import Foundation

func sort(array: [Int]) -> [Int] {
    
    var sortArray = array
    
    for i in 0..<array.count {
        var minIndex = i
        for j in (i+1)..<array.count {
            if (sortArray[j] < sortArray[minIndex]) {
                minIndex = j
            }
        }
        
        if (i != minIndex) {
            let temp = sortArray[i]
            sortArray[i] = sortArray[minIndex]
            sortArray[minIndex] = temp
        }
    }
    
    return sortArray
}


sort(array: [4,2,5,7,2,4,6,2,1,4,3,5,7,4,6,2,4,57])
