import UIKit

let strin = "lmno" //lmon
let noAnswer = "dcbb" // no answer



func biggerIsGreater(w: String) -> String {
    
    var str = "no answer"
    var i = -2
    var j = -1
    
    if w.count < 1 || w.count == 1 || w.count > 100 {
        return str
    }
    
    var indexFirst = w.index(w.endIndex, offsetBy: i)
    var indexSecond = w.index(w.endIndex, offsetBy: j)

    var first = w.utf8[indexFirst]
    var second = w.utf8[indexSecond]
    
    
    while (-i <= w.count) {
        indexFirst = w.index(w.endIndex, offsetBy: i)
        indexSecond = w.index(w.endIndex, offsetBy: j)
        
        first = w.utf8[indexFirst]
        second = w.utf8[indexSecond]
        
        if first >= second {
            i -= 1
            j -= 1
        }
        else {
            j = -1
            
            while -j < -i {
                indexSecond = w.index(w.endIndex, offsetBy: j)
                second = w.utf8[indexSecond]
                
                if second > first {
                    str = w
                    str.remove(at: indexFirst)
                    str.insert(w[indexSecond], at: indexFirst)
                    str.remove(at: indexSecond)
                    str.insert(w[indexFirst], at: indexSecond)
                    
                    
                    indexFirst = str.index(str.endIndex, offsetBy: i + 1)
                    let range = indexFirst ..< str.endIndex
                    let reversedPieceOfString = String(str[range].reversed())
                        
                    str.removeSubrange(range)
                    str.append(reversedPieceOfString)
                    
                    return str
                }
                else {
                    j -= 1
                }
            }
        }
    }
    return str
}


print(biggerIsGreater(w: "f"))




