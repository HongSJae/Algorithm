import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    return Int(ceil((Float(n) / Float(slice))))
}