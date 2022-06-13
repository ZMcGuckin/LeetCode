class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        let n = triangle.count
        var arr = triangle[n-1]
        var i = n - 2
        while i >= 0 {
            var j = 0
            while j <= i {
                arr[j] = min(arr[j], arr[j+1]) + triangle[i][j]
                j += 1
            }
            i -= 1
        }
        return arr[0]
    }
}