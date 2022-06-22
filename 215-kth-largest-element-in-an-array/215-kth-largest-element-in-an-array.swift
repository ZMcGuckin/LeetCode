class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        let nums = nums.sorted { $0 > $1 }
        return nums[k-1]
    }
}