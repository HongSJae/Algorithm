import Foundation

let input = readLine()!.components(separatedBy: " ")
let n = Int(input.first!)!
let k = Int(input.last!)!

var people = (1...n).map{ $0 }

var res = [Int]()

var cnt = 0 {
    didSet {
        cnt %= people.count
    }
}

while res.count < n {
    cnt += k - 1
    res.append(people.remove(at: cnt))
}

print("<\(res.map{ String($0) }.joined(separator: ", "))>")
