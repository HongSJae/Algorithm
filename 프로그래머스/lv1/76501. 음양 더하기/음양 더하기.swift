import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return absolutes.enumerated().map { $1 * (signs[$0] ? 1 : -1)}.reduce(0) { $0 + $1 }
}