class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var res = Array(repeating: 0, count: nums.count)
        for (i, num) in nums.enumerated() {
            res[i] = nums[i] + (i > 0 ? res[i-1] : 0)
        }
        return res
    }
}