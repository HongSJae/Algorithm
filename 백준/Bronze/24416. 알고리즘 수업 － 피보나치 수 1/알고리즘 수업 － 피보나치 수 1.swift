import Foundation

let input = Int(readLine()!)!

var f: [Int] = .init(repeating: 0, count: input + 1)

func fibonacci(n: Int) -> Int {
    f[1] = 1
    f[2] = 1
    for i in 3...n {
        f[i] = f[i - 1] + f[i - 2]
    }
    return f[n];
}

print(fibonacci(n: input), input - 2)
