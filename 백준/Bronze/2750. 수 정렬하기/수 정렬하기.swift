import Foundation

let input = Int(readLine()!)!

var arr = [Int]()

for _ in 0..<input {
    arr.append(Int(readLine()!)!)
}

arr.sorted().forEach { print($0) }
