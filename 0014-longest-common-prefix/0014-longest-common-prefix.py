class Solution(object):
    def longestCommonPrefix(self, strs):
        min_len =  min(len(s) for s in strs)

        for i in range(min_len):
            char = strs[0][i]

            for s in strs:
                if s[i] != char:
                    return strs[0][:i]
                    
        return strs[0][:min_len]
        