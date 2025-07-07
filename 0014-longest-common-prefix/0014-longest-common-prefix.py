class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        new = strs[0]
        for string in strs[1:]:
            i = 0 
            while i < len(new) and i < len(string) and new[i]== string[i]:
                i += 1
            new = new[:i]
            if not new:
                return ""
        return new


