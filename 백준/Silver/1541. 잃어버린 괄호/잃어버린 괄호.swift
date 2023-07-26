import Foundation

let input = readLine()!.components(separatedBy: "-")

var sum = 0

for i in 0..<input.count {
    let a = input[i].components(separatedBy: "+").map { Int($0)! }.reduce(0, +)
    if i == 0 {
        sum += a
    } else {
        sum -= a
    }
}

print(sum)