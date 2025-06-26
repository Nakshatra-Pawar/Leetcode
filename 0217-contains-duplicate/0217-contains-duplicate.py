class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        hash_set = set(nums)
        if len(nums) > len(hash_set):
            return True
        return False