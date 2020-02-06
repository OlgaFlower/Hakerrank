import UIKit


//let numbers = [7,4,6,5,9] //ANDY
let numbers = [3,1] //BOB


func gamingArray(arr: [Int]) -> String {
    var counter = 0
    var maxElement = 0
    
    for el in arr {
        if el > maxElement {
            maxElement = el
            counter += 1
        }
    }
    
    if counter % 2 == 0 { return "ANDY" }
    else { return "BOB" }
}


gamingArray(arr: numbers)
