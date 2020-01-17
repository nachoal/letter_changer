# refactor acronimize with map
def acronimize(sentence)
  #split so we can select the first letter
  #use map to create an array with the first letters
  #join the letters in the array into an acronym
  #upcase

  sentence.split.map { |word| word[0].upcase}.join
end
