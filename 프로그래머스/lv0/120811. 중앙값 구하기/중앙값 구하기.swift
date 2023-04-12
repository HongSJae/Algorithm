import Foundation

func solution(_ array:[Int]) -> Int {
    var arr = array.sorted()
    return arr[arr.count / 2]
}