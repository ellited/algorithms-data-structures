import Foundation

func sort(array: [Int]) -> [Int] {
    
    var isSwap = false
    var resultArray = array
    
    for i in 0..<resultArray.count {
        isSwap = false
        
        for j in 1..<resultArray.count - i {
            if resultArray[j] < resultArray[j-1] {
                let tmp = resultArray[j-1]
                resultArray[j-1] = resultArray[j]
                resultArray[j] = tmp
                
                isSwap = true
            }
        }
        
        if !isSwap {
            break
        }
    }
    
    return resultArray
}

sort(array: [4,2,5,7,2,4,6,2,1,4,3,5,7,4,6,2,4,57])
