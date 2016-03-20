class Hamming

  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length

    strand1 = strand1.split(//)
    strand2 = strand2.split(//)

    complete_strands = strand1.zip(strand2)

    distance = 0
    complete_strands.each do |strand|
      distance += 1 if strand[0] != strand[1]
    end

    return distance
  end

end
