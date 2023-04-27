import Foundation

func solution(_ s:String) -> Bool
{
    let str = s.lowercased()
    var pCount: Int = (str.filter { $0 == "p" }).count
    var yCount: Int = (str.filter { $0 == "y" }).count
    return pCount == yCount
}
