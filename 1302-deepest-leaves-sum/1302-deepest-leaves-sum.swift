/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        if root!.left == nil && root!.right == nil {
            return root!.val
        }
        return deepestLeaf(root, 0).0
    }
    
    func deepestLeaf(_ root: TreeNode?, _ depth: Int) -> (Int, Int) {
        guard let root = root else {
            return (0, 0)
        }
        if root.left == nil && root.right == nil {
            return (root.val, depth+1)
        }
        let leftSide = deepestLeaf(root.left, depth+1)
        let rightSide = deepestLeaf(root.right, depth+1)
        if leftSide.1 > rightSide.1 {
            return (leftSide.0, leftSide.1)
        } else if leftSide.1 == rightSide.1 {
            return (leftSide.0 + rightSide.0, leftSide.1)
        } else {
            return (rightSide.0, rightSide.1)
        }
    }
}