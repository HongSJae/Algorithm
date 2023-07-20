import Foundation

let intArr: [Int] = (0..<5).map { _ in Int(readLine()!)! }.sorted()

print(intArr.reduce(0, +) / 5)
print(intArr[2])
