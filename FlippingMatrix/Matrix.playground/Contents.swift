import UIKit

let matrix = [[112,42,83,119],[56,125,56,49],[15,78,101,43],[62,98,114,108]]

func flippingMatrix(matrix: [[Int]]) -> Int {
    let matrixLength = matrix.count
    var sum = 0

    for x in 0 ..< (matrixLength / 2) {
        for y in 0 ..< (matrixLength / 2) {
            
            print("")

            let topLeftPart = matrix[x][y]
            let topRightPart = matrix[x][matrixLength - 1 - y]
            let bottomLeftPart = matrix[matrixLength - 1 - x][y]
            let bottomRightPart = matrix[matrixLength - 1 - x][matrixLength - 1 - y]
            
            print("x: \(x), y:\(y), TopLeft: \(topLeftPart)")
            print("x: \(x), y:\(matrixLength - y), TopRight: \(topRightPart)")
            print("x: \(matrixLength - 1 - x), y:\(y), BottomLeft: \(bottomLeftPart)")
            print("x: \(matrixLength - 1 - x), y:\(matrixLength - 1 - y), BotoomRight: \(bottomRightPart)")

            var largest = max(topLeftPart, topRightPart)
            largest = max(largest, bottomLeftPart)
            largest = max(largest, bottomRightPart)
            
            sum += largest
        }
    }

    return sum
}


flippingMatrix(matrix: matrix)
