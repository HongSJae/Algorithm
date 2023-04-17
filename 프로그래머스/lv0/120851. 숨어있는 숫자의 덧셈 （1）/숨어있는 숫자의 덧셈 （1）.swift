import Foundation

func solution(_ my_string:String) -> Int {
    var sum = 0
    for char in my_string {
        if let char = Int(String(char)) {
            sum += char
        }
    }
    return sum
}
