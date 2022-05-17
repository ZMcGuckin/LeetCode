class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var maximum = 0
        for sentence in sentences {
            maximum = max(maximum, sentence.split(separator: " ").count)
        }
        return maximum
    }
}