import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var boards = board
    var answer = 0
    var stack: [Int] = []
    for m in moves {
        var breaker = false
        for i in 0..<boards.count {
            for j in 0..<board[i].count {
                if j + 1 == m && boards[i][j] != 0 {
                    stack.append(boards[i][j])
                    boards[i][j] = 0
                    breaker = true
                }
                if breaker { break }
            }
            if breaker { break }
        }
    }
    var i = 1
    while stack.count > i {
        if stack[i] == stack[i - 1] {
            stack.remove(at: i)
            stack.remove(at: i - 1)
            i = 0
            answer += 2
        }
        i += 1
    }
    return answer
}
