import Foundation

func maxSubArraySum(array: [Int], number: Int) -> Int {
    if number > array.count {
        return 0
    }
    
    var sum = 0
    var tempValue = 0
    
    for index in 0 ..< number {
        sum += array[index]
    }
    
    tempValue = sum
    
    for index in number ..< array.count {
        tempValue += array[index] - array[index-number]
        
        sum = max(tempValue, sum)
    }
    
    return sum
}

maxSubArraySum(array: [1, 2, 5, 2, 8, 1, 5], number: 4)
