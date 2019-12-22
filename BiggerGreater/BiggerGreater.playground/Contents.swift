import UIKit

let strin = "lmno" //lmon
let noAnswer = "dcbb" // no answer



func biggerIsGreater(w: String) -> String {
    
    var str = "no answer"
    var i = -2
    var j = -1
    
    var indexFirst = w.index(w.endIndex, offsetBy: i)
    var indexSecond = w.index(w.endIndex, offsetBy: j)

    var first = w.utf8[indexFirst]
    var second = w.utf8[indexSecond]
    
    
    while (-i < w.count) {
        indexFirst = w.index(w.endIndex, offsetBy: i)
        indexSecond = w.index(w.endIndex, offsetBy: j)
        
        first = w.utf8[indexFirst]
        second = w.utf8[indexSecond]
        print("first: \(w[indexFirst]), second: \(w[indexSecond])")
        
        if first >= second {
            print(first)
            print(second)
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
                    print(str)
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


biggerIsGreater(w: "zzzayybbaa") //результат должен быть zzzbyybaaa


//zzzbaaabyy

// "hefg" -> hegf
// "hdck" -> dhkc


