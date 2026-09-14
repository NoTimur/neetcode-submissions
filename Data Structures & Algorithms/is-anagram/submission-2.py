class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        
        s_dict = {}
        t_dict = {}

        for i in s:
            s_dict.setdefault(i, 0)
            s_dict[i] += 1

        for i in t:
            t_dict.setdefault(i, 0)
            t_dict[i] += 1
        
        if s_dict == t_dict:
            return True
        else: 
            return False