import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: [Int] = []
    numbers.map { i in
        result.append(i * 2)
    }
    return result
}