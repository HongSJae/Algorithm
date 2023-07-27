import Foundation
let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

var firstSet = Set((0..<input[0]).map { _ in readLine()! })
var secondSet = Set((0..<input[1]).map { _ in readLine()! })

let intersection = firstSet.intersection(secondSet).sorted(by: <)

print(intersection.count)
intersection.forEach { print($0) }
