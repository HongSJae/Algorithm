import Foundation

func solution(_ strlist:[String]) -> [Int] {
    var strlen: [Int] = []
    let forSup = 0..<strlist.count
    for i in forSup {
        strlen.append(strlist[i].count)
    }
    return strlen
}