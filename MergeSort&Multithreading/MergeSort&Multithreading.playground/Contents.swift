import UIKit

let arr = [3,7,1,67,34,32,87,12,9,2,4]

func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    var newList = [T]()
    var leftIndex = 0
    var rightIndex = 0
    
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
    
    return newList
}


func sort<T: Comparable>(list: [T]) -> [T] {
    guard list.count > 1 else { return list }
    
    let middle = list.count / 2
    
    var leftList = Array(list[0 ..< middle])
    leftList = sort(list: leftList)
    
    var rightList = Array(list[middle ..< list.count])
    rightList = sort(list: rightList)
    
    return merge(leftList, rightList)
}
    




print (sort(list: arr))
