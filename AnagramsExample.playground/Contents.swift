//MARK: Anagram Question

/*
 Given an array of strings, group anagrams together.
 Example:
     Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
     Output:
     [
       ["ate","eat","tea"],
       ["nat","tan"],
       ["bat"]
     ]

 Note:  All inputs will be in lowercase. The order of your output does not matter.
*/

//MARK: Solution

//Mark: Solution1
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dictMap = [String:[String]]();

        for str in strs {
            let characters = str.sorted { (s1, s2) -> Bool in
                return s1 < s2
            }
            let key = String(characters)

            if dictMap[key] != nil {
                dictMap[key]?.append(str)
            }
            else {
                dictMap[key] = [str]
            }
        }

        return dictMap.map({ (key,value) -> [String] in
            return value
        })
    }
groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
print("\(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))")



//Mark: Solution2
func groupAnagrams1(_ strs: [String]) -> [[String]] {
    var dict = [String: [String]]()
    strs.forEach {
        let s = String($0.sorted())
        dict[s] = (dict[s] == nil) ? [$0] : dict[s]! + [$0]
    }
    return dict.map({$0.value})
}

print("\(groupAnagrams1(["eat", "tea", "tan", "ate", "nat", "bat"]))")

