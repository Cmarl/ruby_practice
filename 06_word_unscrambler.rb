# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#super simple
def word_unscrambler(str, words)
  return words.keep_if {|word| word.chars.sort == str.chars.sort}
end

# or ..
# more involved way without fancy methods
def word_unscrambler(str, words)
  str = str.split('').sort.join('')
  possible = []
  words.map do |word|
    sort_word = word.split('').sort.join('')
    possible << word if word_c == str
  end
  return possible
end
