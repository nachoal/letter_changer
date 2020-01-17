# Create a constant so that we are able to use it anywhere in our code
ALPHABET = ('A'..'Z').to_a

# We first need to break down the problem into smaller parts.
# It will be easier to solve it that way.

# Instead of figuring out how to encrypt a sentence we encrypt a word:
def encrypt_word(word, offset = -3)
  # Use #chars to get the array of characters in the word
  # Iterate through it and return a modified version of the original array with #map
  word.chars.map do |letter|
    new_letter_index = (ALPHABET.index(letter) + offset)
    ALPHABET[new_letter_index]
  end
end

def encrypt(sentence)
  sentence.split.map { |word| encrypt_word(word) }.join(' ')
end
