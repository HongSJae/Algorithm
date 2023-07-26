import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

let n = input[0]
var money = input[1]
var moneyType = [Int]()

for _ in 0..<n {
    moneyType.append(Int(readLine()!)!)
}

moneyType.reverse()

var i: Int = 0

var sum = 0

while n > i {
    if money >= moneyType[i] {
        sum += 1
        money -= moneyType[i]
    } else {
        i += 1
    }
}

print(sum)