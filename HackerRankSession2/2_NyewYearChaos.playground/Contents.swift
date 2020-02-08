import UIKit

//let queue = [2,1,5,3,4] //3
//let queue = [2,5,1,3,4] //too chaotic
//let queue = [1,2,5,3,4,7,8,6] //4
let queue = [1,2,5,3,7,8,6,4] //7

func minimumBribes(q: [Int]) -> Void {
    var isChaotic = false
    var count = 0
    var el = 0
    var arr = q


    while el < q.count - 1 {

        if (arr[el] - (el + 1)) > 2 {
            isChaotic = true
            break
        }

        if arr[el] < arr[el + 1] {
            el += 1
        } else {

            let temp = arr[el]
            arr[el] = arr[el + 1]
            arr[el + 1] = temp

            count += 1
            if el > 0 {
                el -= 1
            }
        }
    }
    if isChaotic == true {
        print("Too chaotic")
    } else {
        print(count)
    }
}

minimumBribes(q: queue)





