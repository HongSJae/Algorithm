import Foundation

func solution(_ n:Int64) -> Int64 {
    return Int64(String("\(n)".sorted().reversed()))!
}