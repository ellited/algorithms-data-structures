import Foundation

func merge(array1: [Int], array2: [Int]) -> [Int] {
    var resultArray: [Int] = []
    
    var cursor1 = 0
    var cursor2 = 0
    
    while true {
        
        if cursor1 == array1.count {
            let notFinishedArray = array2[cursor2..<array2.count]
            resultArray.append(contentsOf: notFinishedArray)
            break
        } else if cursor2 == array2.count {
            let notFinishedArray = array1[cursor1..<array1.count]
            resultArray.append(contentsOf: notFinishedArray)
            break
        }
        
        
        if (array1[cursor1] < array2[cursor2]) {
            resultArray.append(array1[cursor1])
            cursor1 += 1
        } else {
            resultArray.append(array2[cursor2])
             cursor2 += 1
        }
        
    }

    return resultArray
}

// merge(array1: [1,10,50], array2: [2,14,99,100])


func mergeSort (array: [Int]) -> [Int] {
    if array.count <= 1 {
        return array
    }
    
    let middleIndex: Int = array.count / 2
    let left = mergeSort(array: Array(array[0..<middleIndex]))
    let right = mergeSort(array: Array(array[middleIndex..<array.count]))
    return merge(array1: left, array2: right)
}

mergeSort(array: [1,5,3,1,3,5,1,2,0,4,1,4,55,2,35]);
