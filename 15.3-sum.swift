/*
 * @lc app=leetcode id=15 lang=swift
 *
 * [15] 3Sum
 */

// @lc code=start
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var nums = nums.sorted()

        var ans: Set<[Int]> = []

        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                var left = j
                var right = nums.count
                while right - left > 1 {
                    let mid = (right + left) / 2
                    let sum = nums[i] + nums[j] + nums[mid]

                    if sum == 0 {
                        ans.insert([nums[i], nums[j], nums[mid]])
                        break
                    }

                    if sum > 0 {
                        right = mid
                    } else {
                        left = mid
                    }
                }
            }
        }
        return Array(ans)
    }
}
// @lc code=end

