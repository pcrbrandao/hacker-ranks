import Foundation

/*
 STDIN              Function
 -----              --------
 6 -4 3 -9 0 4 1    arr[] size n = 6
                    arr = [-4, 3, -9, 0, 4, 1]
 
 OutPut
 0.500000
 0.333333
 0.166667
 
 There are 3 positive numbers, 2 negative numbers, and 1 zero in the array.
 The proportions of occurrence are positive: 3/6=0.5, negative: 2/6=0.333333 and zeros: 1/6=0.166667.
 */
func positiveProportion(on list: [Int]) -> Float {
    Float(list.filter { $0 > 0 }.count) / Float(list.count)
}

func negativeProportion(on list: [Int]) -> Float {
    Float(list.filter { $0 < 0 }.count) / Float(list.count)
}

func zeroProportion(on list: [Int]) -> Float {
    Float(list.filter { $0 == 0 }.count) / Float(list.count)
}

func floatToFormattedString(number: Float) -> String {
    String(format: "%.6f", number)
}

func plusMinus(arr: [Int]) -> Void {
    let result = """
\(floatToFormattedString(number: positiveProportion(on: arr)))
\(floatToFormattedString(number: negativeProportion(on: arr)))
\(floatToFormattedString(number: zeroProportion(on: arr)))
"""
    print(result)
}

plusMinus(arr: [-4, 3, -9, 0, 4, 1])
