import Foundation

func searchIndex(array: [Int], value: Int) -> Int {
    var min = 0
    var max = array.count - 1
    
    while min < max {
        let middleIndex = (min + max) / 2
        
        if array[middleIndex] < value {
            min += 1
        } else if array[middleIndex] > value {
            max -= 1
        } else {
            return middleIndex
        }
    }
    
    return -1
}

searchIndex(array: [1,2,3,4,5,6,7], value: 3)
