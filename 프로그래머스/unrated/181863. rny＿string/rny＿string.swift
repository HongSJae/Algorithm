import Foundation

func solution(_ rny_string:String) -> String {
    let a = rny_string.map { return $0 == "m" ? "rn" : String($0) }
    return a.joined()
}