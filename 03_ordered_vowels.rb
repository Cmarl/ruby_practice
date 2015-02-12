# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.

def ordered_vowel_words(str)
  words = str.split(' ')
  words.delete_if {|word| !(ordered_word(word))}
  words.join(' ')
end

def ordered_word(word)
  vowels = %w{a e i o u}
  no_v_word = word.split('').delete_if {|c| vowels.include?(c)}.join('')
  true if word == no_v_word
  v_only = word.split('').delete_if {|c| !(vowels.include?(c))}.join('')
  v_only == v_only.split('').sort.join('') ? true : false
end

# Or...

def ordered_vowel_words(str)
  vowels = %w[a e i o u]
  ordered = []
  str.split.each do |word|
    just_vows = word.split('').delete_if {|c| !(vowels.include?(c))}
    ordered << word if just_vows == nil || just_vows == just_vows.sort
  end
  ordered.join(' ')
end
