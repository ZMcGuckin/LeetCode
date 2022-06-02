class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var res = [[Int]]()
        for m in matrix {
            for (i, v) in m.enumerated() {
                if res.count <= i {
                    res.append([])
                }
                res[i].append(v)
            }
        }
        return res
    }
}