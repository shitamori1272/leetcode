/*
 * @lc app=leetcode id=9 lang=swift
 *
 * [9] Palindrome Number
 */

// @lc code=start
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let xStr = String(x)
        return xStr == String(xStr.reversed())
    }
}
// @lc code=end

