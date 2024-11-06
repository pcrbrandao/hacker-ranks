import Foundation

// Compare the Triples
/*
 If a[i] > b[i], then Alice is awarded 1 point.
 If a[i] < b[i], then Bob is awarded 1 point.
 If a[i] = b[i], then neither person receives a point.
 The return array is [1, 1] with Alice's score first and Bob's second.
 */
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var score = [0, 0]
    a.enumerated().forEach { index, element in
        score[0] = element > b[index] ? score[0] + 1 : score[0]
        score[1] = element < b[index] ? score[1] + 1 : score[1]
    }
    return score
}

print(compareTriplets(a: [5, 6, 7], b: [3, 6, 10]))
