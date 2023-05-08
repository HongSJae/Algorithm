import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int {
    if (1...count).map { $0 * price }.reduce(0, +) - money < 0 {
        return 0
    } else {
        return (1...count).map { $0 * price }.reduce(0, +) - money
    }
}
