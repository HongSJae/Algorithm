import Foundation

func solution(_ my_string:String) -> String {
    return my_string.filter { i in
        !"aeiou".contains(i)
    }
}