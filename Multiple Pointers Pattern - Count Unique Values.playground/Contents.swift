import Foundation


func countUniqueValues (array: [Int]) -> Int {
    
    if array.count == 0 {
        return 0
    }
    
    var sourceArray = array
    var count = 0
    
    for index in 1 ..< sourceArray.count {
        if sourceArray[index] != sourceArray[count] {
             count += 1
            sourceArray[count] = sourceArray[index]
        }
    }
    
    return count + 1
}

countUniqueValues(array: [1,1,1,1,2,3,3,3,3,4,4,5,6,7,7])

