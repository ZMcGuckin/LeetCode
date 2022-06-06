/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        guard let headA = headA, let headB = headB else {
            return nil
        }
        var tracerA: ListNode? = headA
        var tracerB: ListNode? = headB
        while tracerA !== tracerB {
            tracerA = tracerA == nil ? headB : tracerA?.next
            tracerB = tracerB == nil ? headA : tracerB?.next
        }
        return tracerA
    }
}