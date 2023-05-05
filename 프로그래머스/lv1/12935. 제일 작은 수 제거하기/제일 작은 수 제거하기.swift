func solution(_ arr:[Int]) -> [Int] {
    var ans = arr
    ans.remove(at: ans.firstIndex(of: arr.min()!)!)
    return ans.isEmpty ? [-1] : ans
}
