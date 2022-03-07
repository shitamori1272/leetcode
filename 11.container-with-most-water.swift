/*
 * @lc app=leetcode id=11 lang=swift
 *
 * [11] Container With Most Water
 */

// @lc code=start
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var i = 0
        var j = height.count - 1
        var maxValue = 0
        while i != j {
            maxValue = max(maxValue, min(height[i], height[j]) * (j - i))
            if height[i] < height[j] {
                i = i + 1
            } else {
                j = j - 1
            }
        }
        return maxValue
    }
}
// @lc code=end

