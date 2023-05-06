func solution(_ n:Int) -> String {
    var ans = String(repeating: "수박", count: n / 2)
    return ans + (n % 2 != 0 ? "수" : "")
}
