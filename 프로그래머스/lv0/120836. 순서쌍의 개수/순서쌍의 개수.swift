import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    for i in 1...n {
        if n % i == 0 {
            result += 1
        }
    }
    return result
}