func solution(_ s:String) -> String {
    var ans = ""
    if s.count % 2 == 0 {
        ans.append(Array(s)[s.count / 2 - 1])
    }
    ans.append(Array(s)[s.count / 2])
    return ans
}