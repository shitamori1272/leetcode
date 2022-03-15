/*
 * @lc app=leetcode id=13 lang=swift
 *
 * [13] Roman to Integer
 */

// @lc code=start
class Solution {
    func romanToInt(_ s: String) -> Int {
        var chars = Array(s)
        var s = s
        var pairs: KeyValuePairs = [ 
            "M": 1000,
            "CM": 900,
            "D": 500,
            "CD": 400,
            "C": 100,
            "XC": 90,
            "L": 50,
            "XL": 40,
            "X": 10,
            "IX": 9,
            "V": 5,
            "IV": 4,
            "I": 1
        ]
        var num = 0
        while !s.isEmpty {
            for pair in pairs {
                if s.hasPrefix(pair.key) {
                    num += pair.value
                    s.removeFirst(pair.key.count)
                }
            }
        }
        return num
    }
}
// @lc code=end

