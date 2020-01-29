import UIKit

func isAnagram(string1: String, string2: String) -> Bool {
    if (string1.count != string2.count) {
        return false
    }
    
    var object1: [String : Int] = [ : ]
    var object2: [String : Int] = [ : ]
    
    for letter in string1 {
        object1["\(letter)"] = (object1["\(letter)"] ?? 0) + 1
    }
    
    for letter in string2 {
        object2["\(letter)"] = (object2["\(letter)"] ?? 0) + 1
    }
    
    for letter in string1 {
        if (object1["\(letter)"] != object2["\(letter)"]) {
            return false
        }
    }
    
    return true
}

isAnagram(string1: "text", string2: "tetx")
