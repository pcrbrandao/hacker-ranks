import UIKit

let devicenames = ["mixer","toaster","mixer","tv"]
let dict = Dictionary(grouping: devicenames, by: {$0})
let dups = dict
    .filter { $1.count > 1 }
    .values
    .flatMap { $0 }
var indexed = dups.enumerated().map { (index, element) in
    index == 0 ? element : "\(element)\(index)"
}
let newNames = devicenames
    .map {
        if dups.contains($0), !indexed.isEmpty {
            let indexItem = indexed.first
            indexed.remove(at: 0)
            return indexItem
        }
        return $0
}
    .compactMap { $0 }
print(dict)
print(indexed)
print(newNames)
