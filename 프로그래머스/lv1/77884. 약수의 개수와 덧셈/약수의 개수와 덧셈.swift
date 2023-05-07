import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var sum = 0
    (left...right).map { n in (1...n).filter { n % $0 == 0 }}
        .forEach { list in
            if list.count % 2 == 0 {
                sum += list.last!
            } else {
                sum += -list.last!
            }
        }
    return sum
}
