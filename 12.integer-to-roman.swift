/*
 * @lc app=leetcode id=12 lang=swift
 *
 * [12] Integer to Roman
 */

// @lc code=start
class Solution {
    func intToRoman(_ num: Int) -> String {
        var num = num
        if num == 0 { return "" }
        let values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let symbols = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V","IV", "I"]
        var newRoman: String = ""
        for i in 0..<values.count {
            let c = num / values[i]
            if c > 0 {
                newRoman = String(repeating: symbols[i], count: c)
                num = num - (c * values[i]) 
                break
            }
        }
        return newRoman + intToRoman(num)
    }
}
// @lc code=end

