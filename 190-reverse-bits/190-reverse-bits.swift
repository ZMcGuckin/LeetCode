class Solution {
    func reverseBits(_ n: Int) -> Int {
        var num = n
        var result = 0
        
        for i in 0..<32 {
            result += (num & 1)
            num >>= 1
            if i < 31 {
                result <<= 1
            }
        }
        
        return result
    }
}