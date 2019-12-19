
import Foundation

func minimumNumber(n: Int, password: String) -> Int {
    var count = 0
    var charCount = 0
    
    var minPasswordLength = 6
    
    let special = CharacterSet(charactersIn: "!@#$%^&*()-+")
    let number = CharacterSet(charactersIn: "0123456789")
    let upper = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let lower = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz")
    
    if minPasswordLength < n && n <= 100 {
        minPasswordLength = n
    } else if n > 100 {
        minPasswordLength = 100
    }
    
    if password.rangeOfCharacter(from: lower) == nil {
        charCount += 1
    }
    if password.rangeOfCharacter(from: upper) == nil {
        charCount += 1
    }
    if password.rangeOfCharacter(from: number) == nil {
        charCount += 1
    }
    if password.rangeOfCharacter(from: special) == nil {
        charCount += 1
    }
    if password.count < minPasswordLength {
    count = minPasswordLength - password.count
    }
    
    if count < charCount {
       count = charCount
    }
    
    return count
}

minimumNumber(n: 4, password: "4700")
