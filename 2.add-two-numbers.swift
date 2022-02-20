/*
 * @lc app=leetcode id=2 lang=swift
 *
 * [2] Add Two Numbers
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return addThreeNumbers(l1, l2, 0)
    }

    func addThreeNumbers(_ l1: ListNode?, _ l2: ListNode?, _ num: Int) -> ListNode? {   
        if l1 == nil && l2 == nil && num == 0 { return nil }
        let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + num
        return ListNode(sum % 10, addThreeNumbers(l1?.next, l2?.next, sum/10))
    }
}
// @lc code=end

