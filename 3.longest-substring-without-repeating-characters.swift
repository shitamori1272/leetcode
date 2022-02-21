/*
 * @lc app=leetcode id=3 lang=swift
 *
 * [3] Longest Substring Without Repeating Characters
 */

// @lc code=start
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var dict = [Character: Int]()
        var currentStart = 0
        var maxValue = 0
        
        s.enumerated().forEach { index, char in
            if let lastIndex = dict[char], lastIndex >= currentStart {
                maxValue = max(maxValue, index - currentStart)
                currentStart = lastIndex + 1
            }
            dict[char] = index
        }
        maxValue = max(maxValue, s.count - currentStart)
        return maxValue
    }
}
// @lc code=end

