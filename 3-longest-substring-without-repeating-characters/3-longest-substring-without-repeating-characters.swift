class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var longest = 0
        var arr = Array(s)
        var temp = [String]()
        for a in arr {
            if let i = temp.firstIndex(of: String(a)) {
                temp = temp.count-1 == i ? [] : Array(temp[i+1...temp.count-1])
            }
            temp.append(String(a))
            longest = max(longest, temp.count)
        }
        return longest
    }
}