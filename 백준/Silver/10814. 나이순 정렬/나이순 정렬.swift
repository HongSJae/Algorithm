import Foundation

struct Person {
    let age: Int
    let name: String
}

let n = Int(readLine()!)!

var res: [Person] = (0..<n).map { _ in
    let input = readLine()!.components(separatedBy: " ")
    return Person(age: Int(input[0])!, name: input[1])
}
res.sort(by: { $0.age < $1.age })

res.forEach { print($0.age, $0.name) }
