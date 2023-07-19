import Foundation

struct Dequeue {
    private var queue = [Int]()

    mutating func push_front(_ x: Int) {
        queue.insert(x, at: 0)
    }
    mutating func push_back(_ x: Int) {
        queue.append(x)
    }
    mutating func pop_front() -> Int {
        if queue.isEmpty { return -1 }
        else { return queue.removeFirst() }
    }
    mutating func pop_back() -> Int {
        if queue.isEmpty { return -1 }
        else { return queue.popLast() ?? -1 }
    }
    func size() -> Int {
        return queue.count
    }
    func isEmpty() -> Bool {
        queue.isEmpty
    }
    func front() -> Int {
        queue.first ?? -1
    }
    func back() -> Int {
        queue.last ?? -1
    }
}

//let fileIO = FileIO()

let n = Int(readLine()!)!
var queue = Dequeue()

for _ in 0..<n {
    let input = readLine()!.components(separatedBy: " ")
    let oper = input.first!
    let num = Int(input.last!) ?? 0

    switch oper {
    case "push_front": queue.push_front(num)
    case "push_back": queue.push_back(num)
    case "pop_front": print(queue.pop_front())
    case "pop_back": print(queue.pop_back())
    case "size": print(queue.size())
    case "empty": print(queue.isEmpty() ? 1 : 0)
    case "front": print(queue.front())
    case "back": print(queue.back())
    default: break
    }
}

