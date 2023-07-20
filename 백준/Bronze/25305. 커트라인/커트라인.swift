import Foundation

let input = readLine()!.components(separatedBy: " ")

let n = Int(input[1])!

var grade: [Int] = readLine()!.components(separatedBy: " ").map { Int($0)! }
grade.sort(by: >)

print(grade[n - 1])
