class Solution {
    func hammingWeight(_ n: Int) -> Int {
        let binary = String(n, radix: 2)
        return binary.filter{ $0 == "1" }.count
    }
}