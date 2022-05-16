class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, mid = nums.count/2, right = nums.count - 1
        guard nums[mid] != target else { return mid }
        while left <= right {
            if nums[mid] > target {
                right = mid - 1
            } else {
                left = mid + 1
            }
            mid = (right + left)/2
        }
        return nums[mid] == target ? mid : -1
    }
}