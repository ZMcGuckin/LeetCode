class Solution {
    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
        let people = people.sorted { 
            $0[0] == $1[0] ? $0[1] < $1[1] : $0[0] > $1[0]
        }
        var result = [[Int]]()
        for p in people {
            result.insert(p, at: p[1])
        }
        return result
    }
}