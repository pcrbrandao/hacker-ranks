import Foundation

func spaces(with lenght: Int, at index: Int) -> String {
    let spaces = lenght - index - 1
    return String((0..<spaces).map { _ in " " })
}

func fills(with lenght: Int, at index: Int) -> String {
    String((0...index).map { _ in "#" })
}

func line(with lenght: Int, at index: Int) -> String {
    spaces(with: lenght, at: index) + fills(with: lenght, at: index)
}

func staircase(n: Int) -> Void {
    (0..<n).forEach { row in
        print(line(with: n, at: row))
    }
}

staircase(n: 4)
