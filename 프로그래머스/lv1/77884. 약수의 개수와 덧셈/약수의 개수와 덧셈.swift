import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    return (left...right).map { n in (1...n).filter { n % $0 == 0 }.count % 2 == 0 ? n : -n }.reduce(0, +)
}