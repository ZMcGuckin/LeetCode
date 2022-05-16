class Solution {
    func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
        let rows = grid.count, cols = grid[0].count
        guard grid[0][0] != 1 && grid[rows-1][cols-1] != 1 else {
            return -1
        }
        var grid = grid
        var points: Set<[Int]> = [[0, 0]]
        var res = 0
        while !points.isEmpty {
            res += 1
            points.forEach { grid[$0[0]][$0[1]] = 2 }
            var nextPoints = Set<[Int]>()
            for point in points {
                let x = point[0], y = point[1]
                if x == rows-1 && y == cols-1 { return res }
                for dx in -1...1 { for dy in -1...1 {
                    let nx = x + dx
                    let ny = y + dy
                    if nx >= 0 && nx < rows && ny >= 0 && ny < cols && grid[nx][ny] == 0 {
                        nextPoints.insert([nx, ny])
                    }
                }}
            }
            points = nextPoints
        }
        return -1
    }
}