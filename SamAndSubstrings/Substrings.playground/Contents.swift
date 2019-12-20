import UIKit

func substrings(n: String) -> Int {
    
    let maxStringLength = Int(pow(10.0, 5.0) * 2)
    let mod = Int(pow(10.0,9.0) + 7)
    
    let strLength = n.count
    var sum = 0
    var str = n
    
    if (n.count < 1) && (n.count > (Int(maxStringLength))) {
        return 0
    } else {
        
        sum = (Int(str.suffix(1))! * strLength) % Int(mod)
        str.removeLast()
        
        var bitness = 1
        var j = strLength - 1
        
        while (j > 0) {
            
            let number: Int! = Int(str.suffix(1))
            
            bitness = (((bitness * 10) % mod) + 1) % mod
            
            sum = (sum + (number * j * bitness) % mod) % mod
            
            j -= 1
            
            str.removeLast()
        }
        return sum
    }
    return 0
}



substrings(n: "123")

























//func substrings(n: String) -> Int {

//    let maxStringLength = pow(10.0, 5.0) * 2
//    let mod = pow(10.0,9.0) + 7
//
//
//
//    var result = 0
//
//    if (n.count < 1) && (n.count > (Int(maxStringLength))) {
//        return 0
//    } else {
//
//        for i in 0 ..< n.count {
//            for j in i ..< n.count {
//
//                let startIndex = n.index(n.startIndex, offsetBy: i)
//                let endIndex = n.index(n.endIndex, offsetBy: -j+i)
//                let range = (startIndex ..< endIndex)
//
//                result = (result + Int(String(n[range]))!) % Int(mod)
//
//
//
//            }
//        }
//
//    }
//
//
//      return result % Int(mod)
//}
//
//
//substrings(n: "01187878787878888787654545")




//f=(f*10+1)%MOD
