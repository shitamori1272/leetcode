/*
 * @lc app=leetcode id=8 lang=swift
 *
 * [8] String to Integer (atoi)
 */

// @lc code=start
class Solution {
    func myAtoi(_ s: String) -> Int {
        var didReadNum = false
        var isPositive = true
        var answer = 0
        for c in s {
            switch c {
                case " " where !didReadNum:
                    continue
                case "+" where !didReadNum:
                    isPositive = true
                    didReadNum = true
                case "-" where !didReadNum:
                    isPositive = false
                    didReadNum = true
                case "1":
                    answer = appendNum(current: answer, append: 1, isPositive: isPositive)
                    didReadNum = true
                case "2":
                    answer = appendNum(current: answer, append: 2, isPositive: isPositive)
                    didReadNum = true
                case "3":
                    answer = appendNum(current: answer, append: 3, isPositive: isPositive)
                    didReadNum = true
                case "4":
                    answer = appendNum(current: answer, append: 4, isPositive: isPositive)
                    didReadNum = true
                case "5":
                    answer = appendNum(current: answer, append: 5, isPositive: isPositive)
                    didReadNum = true
                case "6":
                    answer = appendNum(current: answer, append: 6, isPositive: isPositive)
                    didReadNum = true
                case "7":
                    answer = appendNum(current: answer, append: 7, isPositive: isPositive)
                    didReadNum = true
                case "8":
                    answer = appendNum(current: answer, append: 8, isPositive: isPositive)
                    didReadNum = true
                case "9":
                    answer = appendNum(current: answer, append: 9, isPositive: isPositive)
                    didReadNum = true
                case "0":
                    answer = appendNum(current: answer, append: 0, isPositive: isPositive)
                    didReadNum = true
                default:
                    return answer
            }
            if answer == Int32.max || answer == Int32.min {
                return answer
            } 
        }
        return answer
    }

    func appendNum(current: Int, append: Int, isPositive: Bool) -> Int {
        let finalAppend = append * (isPositive ? 1 : -1)
        if current > Int32.max/10 || (current == Int32.max/10 && finalAppend > 7) {
            return Int(Int32.max)
        }
        if current < Int32.min/10 || (current == Int32.min/10 && finalAppend < -8) {
            return Int(Int32.min)
        }
        return current * 10 + finalAppend
    }
}
// @lc code=end
