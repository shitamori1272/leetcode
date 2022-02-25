/*
 * @lc app=leetcode id=6 lang=swift
 *
 * [6] Zigzag Conversion
 */

// @lc code=start
class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 { return s }
        let chars = Array(s)
        var answerIndex = [Int]()
        let block = 2*numRows-2
        for n in 0..<numRows {
            var a = 0
            while(true) {
                let newIndex = a*block+n
                guard newIndex < chars.count else { break }
                if !answerIndex.contains(newIndex) {
                    answerIndex.append(newIndex)
                }

                let newIndex2 = a*block+block-n
                guard newIndex2 < chars.count else { break }
                if !answerIndex.contains(newIndex2) {
                    answerIndex.append(newIndex2)
                }

                guard answerIndex.count < chars.count else { break }

                a+=1
            }
        }
        return String(answerIndex.map { chars[$0] })
    }
}
// @lc code=end

