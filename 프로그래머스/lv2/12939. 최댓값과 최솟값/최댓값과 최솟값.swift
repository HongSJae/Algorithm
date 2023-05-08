func solution(_ s:String) -> String {
    return "\(s.split(separator: " ").map { Int($0)! }.min()!) \(s.split(separator: " ").map { Int($0)! }.max()!)"
}