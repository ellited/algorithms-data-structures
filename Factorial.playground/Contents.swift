import Foundation

func factorial (number: Int) -> Int {
    if number == 1 {
        return 1
    }
    return number * factorial(number: number - 1)
}

factorial(number: 4)
 
