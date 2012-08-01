def palindrome?(string)
 string.gsub(/\W/, "").downcase == string.gsub(/\W/, "").downcase.reverse
end

def testPalindrome(string, expected)
  result = palindrome?(string)
  puts "[#{string}] #{expected}? #{result}" 
end

testPalindrome("A man, a plan, a canal -- Panama", true)
testPalindrome("Madam, I'm Adam!", true)
testPalindrome("Abracadabra", false)


