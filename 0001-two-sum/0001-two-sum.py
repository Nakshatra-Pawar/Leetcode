class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        naks = []
        for i in range(len(nums)):
            for j in range(i+1,len(nums)):
                if nums[i]+nums[j] == target:
                    naks.append(i)
                    naks.append(j)
                    return naks

        return naks  
            

        