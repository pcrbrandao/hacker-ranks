import Foundation

/*
 Example
 candles = [4, 4, 1, 3]
 The maximum height candles are 4 units high. There are 2 of them, so return 2.
 */
func birthdayCakeCandles(candles: [Int]) -> Int {
    let max = candles.max()
    return candles.filter { $0 == max }.count
}

print(birthdayCakeCandles(candles: [4, 4, 1, 3]))
