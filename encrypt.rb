# 1. #split sentence into an array of words
# 2. #map through words & encrypt them
# 3. Return new array of encrypted words
# 4. Turn array into str with a #join

def encrypt_word(word)
  alphabet = ('A'..'Z').to_a
  word.chars.map do |letter|
    new_letter_index = (alphabet.index(letter) - 3)
    alphabet[new_letter_index]
  end.join
end

def encrypt(sentence)
  sentence.split.map { |word| encrypt_word(word) }.join(' ')
end
