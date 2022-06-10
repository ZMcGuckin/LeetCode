class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var ran = Array(ransomNote)
        var mag = Array(magazine)
        while !ran.isEmpty {
            guard !mag.isEmpty else { return false }
            let a = mag.removeFirst()
            if let i = ran.firstIndex(of: a) {
                ran.remove(at: i)
            }
        }
        return true
    }
}