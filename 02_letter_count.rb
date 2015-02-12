# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.

def letter_count(str)
  l_hash = {}
  str = str.split('').delete_if {|c| c == " " }
  str.each do |char|
    l_hash.has_key?(char) ? l_hash[char] += 1 : l_hash[char] = 1
  end
  l_hash
end
