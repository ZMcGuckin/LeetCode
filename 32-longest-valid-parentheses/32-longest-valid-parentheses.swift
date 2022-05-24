class Solution {
    func longestValidParentheses(_ s: String) -> Int {
        guard !s.isEmpty else {return 0}
        var stack = [Int]()
        stack.append(-1)
        var arr = Array(s)
        var res = 0
        for (i, a) in arr.enumerated() {
            if a == ")" {
                if stack.count > 1 && arr[stack.last!] == "(" {
                    stack.removeLast()
                    res = max(res, i - stack.last!)
                }else{
                    stack.append(i)
                }
            }else{
                stack.append(i)
            }
        }
        return res
    }
}