import Foundation


func sumZero(array: [Int]) -> [Int] {
    var left = 0
    var right = array.count - 1
    
    while left < right {
        let summ = array[left] + array[right]
        
        if summ == 0 {
            return [array[left], array[right]]
        } else if summ > 0 {
            right -= 1
        } else {
            left += 1
        }
    }
    
    return []
}

sumZero(array: [-10,-5,-3,-2,-1,0,1,3,5,6,7,8,9])
