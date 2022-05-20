class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        var vals = [[Int]](repeating: [Int](repeating: 0, count: obstacleGrid[0].count), count: obstacleGrid.count)
        for i in 0..<vals.count {
            for j in 0..<vals[0].count {
                if obstacleGrid[i][j] == 1 {
                    if i == 0, j == 0 {
                        return 0
                    }
                    vals[i][j] = 0
                } else if i == 0 {
                    if j > 0, vals[i][j-1] == 0 {
                        vals[i][j] = 0
                    } else {
                        vals[i][j] = 1
                    }
                } else if j == 0 {
                    if i > 0, vals[i-1][j] == 0 {
                        vals[i][j] = 0
                    } else {
                        vals[i][j] = 1
                    }
                } else {
                    vals[i][j] = vals[i-1][j] + vals[i][j-1]
                }
            }
        }
        return vals.last?.last ?? 0
    }
}