import Foundation

//Frequency Counter Pattern
func same(array1: [Int], array2: [Int]) -> Bool {
    
    if array1.count != array2.count {
        return false
    }
    
    var object1: [Int : Int] = [:]
    var object2: [Int : Int] = [:]
    
    for item in array1 {
        object1[item] = ( object1[item] ?? 0 ) + 1
    }
    
    for item in array2 {
        object2[item] = ( object2[item] ?? 0 ) + 1
    }
    
    for key in object1.keys {
        if (object2[key * key] == nil) {
            return false
        }
        
        if (object2[key * key] != object1[key]) {
            return false
        }
    }
    
    
    return true
}


same(array1: [1,2,3,2], array2: [9,1,4,4]);
