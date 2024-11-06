import Foundation

func sumOfLeftDiagonalOfMatrix(arr: [[Int]], with size: Int) -> Int {
    (0..<size).reduce(0) { (acc, index) in
        let item = arr[index][index]
        if item > -100 && item <= 100 {
            return acc + item
        }
        return acc
    }
}

func sumOfRightDiagonalOfMatrix(arr: [[Int]], with size: Int) -> Int {
    (0..<size).reduce(0) { (acc, index) in
        let item = arr[index][size - index - 1]
        if item > -100 && item <= 100 {
            return acc + item
        }
        return acc
    }
}

func diagonalDifference(arr: [[Int]]) -> Int {
    abs(sumOfLeftDiagonalOfMatrix(arr: arr, with: arr[0].count) - sumOfRightDiagonalOfMatrix(arr: arr, with: arr[0].count))
}

let input = [[1, 2, 3],
             [4, 5, 6],
             [9, 8, 9]]
let input2 = [
    [11, 2, 4],
    [4, 5, 6],
    [10, 8, -12]
]

print(diagonalDifference(arr: input2))
