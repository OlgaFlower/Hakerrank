import UIKit

let str = "cdcd" //5
//let str = "ifailuhkqq" //3

func sherlockAndAnagrams(s: String) -> Int {
    let charArr = s.compactMap {($0)}
    var result = 0
    
    for el in 0 ..< charArr.count - 1 {
        var anagrams = [String : Int]()
        
        for slice in 0 ..< charArr.count - el {
            let str = String(charArr[slice ... slice + el].sorted())
            
            if anagrams.keys.contains(str) {
                anagrams[str]! += 1
            } else {
                anagrams[str] = 1
            }
        }
        
        for key in anagrams {
            result += key.value * (key.value - 1) / 2
        }
    }
    
    return result
}

sherlockAndAnagrams(s: str)
