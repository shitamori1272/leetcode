/*
 * @lc app=leetcode id=17 lang=swift
 *
 * [17] Letter Combinations of a Phone Number
 */

// @lc code=start
class Solution {

    var dp = [
            "2": ["a", "b", "c"],
            "3": ["d", "e", "f"],
            "4": ["g", "h", "i"],
            "5": ["j", "k", "l"],
            "6": ["m", "n", "o"],
            "7": ["p", "q", "r", "s"],
            "8": ["t", "u", "v"],
            "9": ["w", "x", "y", "z"]
        ]

    func letterCombinations(_ digits: String) -> [String] {
        if let saved = dp[digits] {
            return saved
        }
        guard let headChar = digits.first,
            let headAnswers = dp[String(headChar)] else { return [] }
        let last = String(digits.dropFirst())
        let answers = headAnswers.flatMap { headAnswer in 
            letterCombinations(last).map { headAnswer + $0 } 
        }
        dp[digits] = answers
        return answers
    }
}
// @lc code=end