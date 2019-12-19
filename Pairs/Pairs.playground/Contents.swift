import UIKit

var arr = [1, 5, 3, 4, 2]

func pairs(k: Int, arr: [Int]) -> Int {
    
    var numbersSet = Set<Int>()
    var pairsCounter = 0
    
    for i in 0 ..< arr.count {
        numbersSet.insert(arr[i])
        
        if numbersSet.contains(arr[i] + k) {
            pairsCounter += 1
        }
        if numbersSet.contains(arr[i] - k) {
            pairsCounter += 1
        }
    }
    
    return pairsCounter
}


pairs(k: 2, arr: arr)

