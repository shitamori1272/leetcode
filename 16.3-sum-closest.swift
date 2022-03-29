/*
 * @lc app=leetcode id=16 lang=swift
 *
 * [16] 3Sum Closest
 */

// @lc code=start
class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted()
        var current = nums[0] + nums[1] + nums[2]
        for i in 0..<nums.count-2 {
            var left = i+1
            var right = nums.count-1
            while left < right {
                let sum = nums[i] + nums[left] + nums[right]
                if abs(sum - target) < abs(current - target) {
                    current = sum
                }

                if sum == target {
                    return sum
                } else if sum > target {
                    right = right-1 
                } else {
                    left = left+1
                }
            }
        }
        return current
    }
}
// @lc code=end