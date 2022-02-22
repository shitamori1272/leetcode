/*
 * @lc app=leetcode id=4 lang=swift
 *
 * [4] Median of Two Sorted Arrays
 */

// @lc code=start
class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var sum = nums1 + nums2
        sum.sort()
        let count = sum.count
        if count % 2 == 0 {
            let median = Int(count/2)
            return Double(sum[median-1]+sum[median])/2.0
        } else {
            return Double(sum[Int(count-1)/2])
        }
    }
}
// @lc code=end

