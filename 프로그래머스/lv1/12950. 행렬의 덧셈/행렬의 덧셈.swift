func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return Array(zip(arr1, arr2).map { Array(zip($0, $1).map { $0 + $1 }) })
}