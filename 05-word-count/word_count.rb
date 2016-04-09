def words(words)

  word_hash = Hash.new(0)

  words.split(" ").each { |word| word_hash[word] += 1 }

  return word_hash
end
