def words(phrase)

  word_hash = Hash.new(0)

  phrase.split(" ").each { |word| word_hash[word] += 1 }

  return word_hash
end


=begin
Jeremy's sorta solution

def words(text)
  counts = {}
  text.split(/\s+/).each do |word|
  # counts[word] ||= 0
  counts[word] += 1
  end

  counts
end
=end
