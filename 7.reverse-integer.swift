/*
 * @lc app=leetcode id=7 lang=swift
 *
 * [7] Reverse Integer
 */

// @lc code=start
class Solution {
    func reverse(_ x: Int) -> Int {
        var current = x
        var answer: Int = 0
        while current != 0 {
            let num = current % 10
            current = current / 10
            if answer > Int32.max / 10 || (answer == Int32.max / 10 && num > 7) {
                return 0
            }

            if answer < Int32.min / 10 || (answer == Int32.min / 10 && num < -8) {
                return 0
            }

            answer = answer * 10 + num
        }
        return answer
    }
}
// @lc code=end

