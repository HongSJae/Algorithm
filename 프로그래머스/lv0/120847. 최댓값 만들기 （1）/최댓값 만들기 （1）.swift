import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sortedNumbers = numbers.sorted()
    return sortedNumbers[numbers.count - 1] * sortedNumbers[numbers.count - 2]
}
