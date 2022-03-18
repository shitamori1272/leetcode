/*
 * @lc app=leetcode id=14 lang=swift
 *
 * [14] Longest Common Prefix
 */

// @lc code=start
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var response: String = ""
        let shortest = strs.sorted { $0.count < $1.count }.first ?? ""
        let shortestChars = Array(shortest)
        for i in 0..<shortestChars.count {
            for str in strs {
                if  shortestChars[i] != Array(str)[i] {
                    return response
                }
            }
            response += String(shortestChars[i])
        }
        return response
    }
}
// @lc code=end

