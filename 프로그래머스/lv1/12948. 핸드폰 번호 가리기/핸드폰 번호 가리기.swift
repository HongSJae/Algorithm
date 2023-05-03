func solution(_ phone_number:String) -> String {
    var ans = ""
    for (index, value) in phone_number.enumerated() {
        ans.append(index < phone_number.count - 4 ? "*" : "\(value)")
    }
    return ans
}