import Foundation

func aVeryBigSum(ar: [Int]) -> Int {
    ar.reduce(0) { acc, number in
        acc + number
    }
}

let input = [5,
             1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
print(aVeryBigSum(ar: input))
