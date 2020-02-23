import UIKit

//let queue = [2,1,5,3,4] //3
let queue = [2,5,1,3,4] //too chaotic
//let queue = [1,2,5,3,4,7,8,6] //4
//let queue = [1,2,5,3,7,8,6,4] //7

func minimumBribes(q: [Int]) -> Void {
    var result = 0
    
    for el in 0 ..< q.count {
        if (q[el] - (el + 1)) > 2 {
            print("Too chaotic")
            return
        }
        
        var startIndex: Int {
            if q[el] - 2 <= 0 {
                return 0
            } else {
                return q[el] - 2
            }
        }
        
        if startIndex < el {
            for i in startIndex ..< el {
                if q[i] > q[el] {
                    result += 1
                }
            }
        }
    }
    print(result)
}

minimumBribes(q: queue)





