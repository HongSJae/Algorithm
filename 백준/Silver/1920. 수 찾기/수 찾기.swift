import Foundation

let n = readLine()
let shape: [Int] = readLine()!.components(separatedBy: " ").map { Int($0)! }

let m = readLine()
let clone: [Int] = readLine()!.components(separatedBy: " ").map { Int($0)! }

var s = Set(shape).intersection(clone)

clone.forEach { print(s.contains($0) ? 1 : 0) }

