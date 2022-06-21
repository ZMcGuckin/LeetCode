class Solution {
    func minimumLengthEncoding(_ words: [String]) -> Int {
        var set = Set(words)
        for s in set {
            for i in 1...s.count {
                set.remove(String(s.suffix(s.count-i)))
            }
        }
        var res = 0
        set.forEach { res += $0.count + 1}
        return res
    }
}