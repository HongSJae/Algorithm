import Foundation

func solution(_ array:[Int]) -> [Int] {
    var max = 0
    var index = 0
    max = array.max()!
    index = array.firstIndex(of: max)!
    
    return [max, index]
}