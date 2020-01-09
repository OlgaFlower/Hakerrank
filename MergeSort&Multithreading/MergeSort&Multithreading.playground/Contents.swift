import UIKit
import PlaygroundSupport
import Dispatch

let arr = [3,7,1,67,34,32,87,12,9,2,4,167,324,132,827,142,955,211,304,31,72,11,627,334,13,8,22,19,21,40]


func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    
    var newList = [T]()
    var leftIndex = 0
    var rightIndex = 0
    let mergeSortDispatchGroup = DispatchGroup()
    
    // Создать queue
    mergeSortDispatchGroup.enter()

    DispatchQueue.global(qos: .userInteractive).async {
        while leftIndex < left.count, rightIndex < right.count {

            if left[leftIndex] < right[rightIndex] {
                newList.append(left[leftIndex])
                leftIndex += 1
            }
            else if left[leftIndex] > right[rightIndex] {
                newList.append(right[rightIndex])
                rightIndex += 1
            }
            else {
                newList.append(left[leftIndex])
                newList.append(right[rightIndex])
                leftIndex += 1
                rightIndex += 1
            }
        }

        while leftIndex < left.count {
            newList.append(left[leftIndex])
            leftIndex += 1
        }

        while rightIndex < right.count {
            newList.append(right[rightIndex])
            rightIndex += 1
        }
        mergeSortDispatchGroup.leave()
    }

    mergeSortDispatchGroup.wait()
    
    return newList
}


func sort<T: Comparable>(list: [T]) -> [T] {
    
    guard list.count > 1 else { return list }
    
    var leftList = [T]()
    var rightList = [T]()
    let middle = list.count / 2
    
    let sortDispatchGroup = DispatchGroup()
    // Создать queue
    sortDispatchGroup.enter()
    
    DispatchQueue.global(qos: .userInteractive).async {
        
        leftList = Array(list[0 ..< middle])
        leftList = sort(list: leftList)
        
        rightList = Array(list[middle ..< list.count])
        rightList = sort(list: rightList)
        
        sortDispatchGroup.leave()
    }
    
    sortDispatchGroup.wait()
    
    return merge(leftList, rightList)
}
    


print (sort(list: arr))

