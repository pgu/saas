# a
def palindrome?(string)
 string.gsub(/\W/, "").downcase == string.gsub(/\W/, "").downcase.reverse
end

def test_palindrome?(string, expected)
  puts "----- test of palindrome function -----"
  result = palindrome?(string)
  puts "[#{string}] #{expected}? #{result}" 
  puts
end

test_palindrome?("A man, a plan, a canal -- Panama", true)
test_palindrome?("Madam, I'm Adam!", true)
test_palindrome?("Abracadabra", false)

# b

def count_words(string)
  h = Hash.new(0)
  string.downcase.split(/\b\W+\b/i).each { |i| h[i] += 1 }
  return h
end



def test_count_words()
  puts "----- test of count words function -----"
  text = "A man, a plan, a canal -- Panama"
  expected = {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
  actual = count_words(text)
  puts "[#{text}]? #{actual == expected}" 
  puts actual.inspect
  puts

  text = "Doo bee doo bee doo"
  expected = {'doo' => 3, 'bee' => 2}
  actual = count_words(text)
  puts "[#{text}]? #{actual == expected}" 
  puts actual.inspect

  puts
end

test_count_words




