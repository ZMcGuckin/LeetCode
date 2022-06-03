
class NumArray {
    var preSum: [Int]

    init(_ nums: [Int]) {
        preSum = nums
        for i in 1..<nums.count {
            preSum[i] = preSum[i-1] + nums[i]
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        preSum[right] - (left > 0 ? preSum[left-1] : 0)
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */