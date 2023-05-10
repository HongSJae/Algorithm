import Foundation

let n = Int(readLine()!)!
var stack = [Int]()
for _ in 0..<n {
    let input = readLine()!.components(separatedBy: " ")
    let oper = input.first
    let num = Int(input.last ?? "") ?? -1

    switch oper {
    case "push":
        stack.append(num)
    case "pop":
        print(stack.popLast() ?? -1)
    case "size":
        print(stack.count)
    case "empty":
        print(stack.isEmpty ? 1 : 0)
    case "top":
        print(stack.last ?? -1)
    default: break
    }
}
