class Solution {
    func removePalindromeSub(_ s: String) -> Int {
        var s = Array(s)
        var count = s.count
        for i in 0..<(count/2) {
            if s[i] != s[count-i-1] {
                return 2
            }
        }
        return 1
    }
}