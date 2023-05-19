import Foundation

func solution(_ s:String) -> Bool
{
    var ans = true
    var stack: [String] = []

    s.forEach {
        switch $0 {
        case "(":
            stack.append(String($0))
        default:
            if stack.popLast() == nil {
                ans = false
            }
        }
    }
    
    return stack.count == 0 ? ans : false
}