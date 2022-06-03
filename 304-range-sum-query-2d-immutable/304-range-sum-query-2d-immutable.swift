
class NumMatrix {
    var preSums: [[Int]]
    
    init(_ matrix: [[Int]]) {
        preSums = matrix
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                let left = (j > 0 ? preSums[i][j-1] : 0)
                let top = (i > 0 ? preSums[i-1][j] : 0)
                let leftTop = (i > 0 && j > 0 ? preSums[i-1][j-1] : 0)
                preSums[i][j] += (left + top - leftTop)
            }
        }
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        let left = (col1 > 0 ? preSums[row2][col1-1] : 0)
        let top = (row1 > 0 ? preSums[row1-1][col2] : 0)
        let leftTop = (row1 > 0 && col1 > 0 ? preSums[row1-1][col1-1] : 0)
        return preSums[row2][col2] - (left + top - leftTop)
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */