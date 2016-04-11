def words(phrase)

  word_hash = Hash.new(0)

  phrase.split(" ").each { |word| word_hash[word] += 1 }

  return word_hash
end
