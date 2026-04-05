# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution(object):
    def binaryTreePaths(self, root):
        result = []

        def dfs(node, path):
            if not node:
                return

            if path == "":
                new_path = str(node.val)
            else:
                new_path = path + "->" + str(node.val)

            if not node.left and not node.right:
                result.append(new_path)
                return

            dfs(node.left, new_path)
            dfs(node.right, new_path)

        dfs(root, "")
        return result