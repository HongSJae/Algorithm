func solution(_ s:String) -> String {
    return s.map { UnicodeScalar(String($0))! }.sorted(by: >).map { String(UnicodeScalar($0)) }.joined()
}