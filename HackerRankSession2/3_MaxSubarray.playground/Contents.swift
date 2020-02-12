import UIKit

//let array = [-2,-3,-1,-4,-6]   //-1 -1
//let array = [1,2,3,4]   //10 10
//let array = [2,-1,2,3,4,-5]   //10 11
let array = [2,4,5,-30,3,-10,1,2,-9,9,-89]  //11 26


func maxSubarray(arr: [Int]) -> [Int] {

    var maxCurrent = arr[0]
    var maxSubarray = arr[0]
    var maxSubsequence = arr[0]
    
    if arr.count == 1 {
        return [maxSubarray, maxSubsequence]
    }
    
    for i in 1...arr.count-1 {
        maxCurrent = max(arr[i], maxCurrent + arr[i])
        if arr[i] > 0 {
            maxSubsequence += arr[i]
        }
        
        if arr[i] < 0 {
            
        }
        
        if maxCurrent > maxSubarray {
            maxSubarray = maxCurrent
        }
    }
    
    if maxSubarray < 0 {
        maxSubsequence = maxSubarray
    }
    
    return [maxSubarray, maxSubsequence]
}

maxSubarray(arr: array)

