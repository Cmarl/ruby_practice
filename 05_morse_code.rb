# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it. See
# http://en.wikipedia.org/wiki/Morse_code. Put two spaces between
# words and one space between letters.
#
# You'll have to type in morse code: I'd use a hash to map letters to
# codes. Don't worry about numbers.
#
# I wrote a helper method `morse_encode_word(word)` that handled a
# single word.

#using safe methods
def morse_encode(str)
  morse_hash = {
    :a => '.-', :b => '-...', :c => '-.-.', :d => '-..', :e => '.', :f => '..-.', :g => '--.', :h => '....', :i => '..',
    :j => '.---', :k => '-.-', :l => '.-..', :m => '--', :n => '-.', :o => '---', :p => '.--.', :q => '--.-', :r => '.-.',
    :s => '...', :t => '-', :u => '..-', :v => '...-', :w => '.--', :x => '-..-', :y => '-.--', :z => '--..'
  }
  morse_result = []
  words = str.split(" ")
  words.each do |word|
    m_word = []
    chars = word.split("")
    chars.each do |c|
      m_word << morse_hash[c.to_sym]
    end
    morse_result << m_word.join(" ")
  end
  return morse_result.join("  ")
end
#altering in place
morse_hash = {
  :a => '.-', :b => '-...', :c => '-.-.', :d => '-..', :e => '.', :f => '..-.', :g => '--.', :h => '....', :i => '..',
  :j => '.---', :k => '-.-', :l => '.-..', :m => '--', :n => '-.', :o => '---', :p => '.--.', :q => '--.-', :r => '.-.',
  :s => '...', :t => '-', :u => '..-', :v => '...-', :w => '.--', :x => '-..-', :y => '-.--', :z => '--..'
}
words = str.split(' ')
words.map! do |word|
  chars = word.split('')
  chars.map! {|char|char = morse_hash[char.to_sym]}
  word = chars.join(' ')
end
return words.join("  ")
