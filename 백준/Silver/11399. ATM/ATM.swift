import Foundation

let input = Int(readLine()!)!

let people = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted(by: <)

var cnt = 0

for i in 0..<people.count {
    people.prefix(i + 1).forEach {
        cnt += $0
    }
}

print(cnt)
