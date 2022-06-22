class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        for i in stride(from: 0, to: nums.count-1, by: 2) {
            for j in 0..<nums[i] {
                res.append(nums[i+1])
            }
        }
        return res
    }
}