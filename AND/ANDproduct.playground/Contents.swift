import UIKit

func andProduct(a: Int, b: Int) -> Int {

    var c = a
    for i in a ..< b {
        c = c & (i + 1)
    }
    return c
}


andProduct(a: 12, b: 15)
