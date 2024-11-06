import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    let sorted = arr.sorted()
    let minList = sorted.dropLast()
    let minListSum = minList.reduce(0) { (acc, number) in acc + number }
    
    let maxList = sorted.dropFirst()
    let maxListSum = maxList.reduce(0) { (acc, number) in acc + number }
    print("\(minListSum) \(maxListSum)")
}

miniMaxSum(arr: [1, 3, 5, 7, 9])
