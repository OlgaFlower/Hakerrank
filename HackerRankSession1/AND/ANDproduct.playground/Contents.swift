import UIKit


//LAST

func andProduct(a: Int, b: Int) -> Int {
    
    var diff = Double(b - a)
   
    if a == b { return a }
    if a == 0 { return 0 }
    
    if (b - a) % 2 != 0 {
           var c = 1
           var result = a
           
           while diff > 0 {
               result = result & (result + c)
               c += 1
               diff -= 1
           }
           return result & b
       }
    
    
    var i = 0.0
    var res = a + Int(pow(2.0, i))
    
    if (b - a) % 2 == 0 {
        
        while a + Int(pow(2.0, i)) < b {
            res = a + Int(pow(2.0, i))
            print (res)
            i += 1
        }
        let difference = b - res
        
        if difference == 2 {
            var result = 0
            result = a & res
            result = (result & (res + 1)) & b
            return result
        }
        
        if difference == 1 {
            return res & b
        }
    }
    return 0
}

andProduct(a: 12, b: 15)







//для проверки
func and(a: Int, b: Int) -> Int {

    var c = a
    for i in a ..< b {
        c = c & (i + 1)
    }
    return c
}

and(a: 121, b: 1785)

