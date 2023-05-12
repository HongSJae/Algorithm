func solution(_ s:String) -> String {
    var isFirst = true
    let result = Array(s.lowercased())
    return result.map {
        if $0 == " " {
            isFirst = true
            return String($0)
        } else if isFirst {
            isFirst = false
            return $0.uppercased()
        } else {
            isFirst = false
            return String($0)
        }
    }.joined()
}