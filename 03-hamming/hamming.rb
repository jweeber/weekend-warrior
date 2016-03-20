class Hamming

  def self.compute(string1, string2)
    raise ArgumentError if string1.length != string2.length

    string1 = string1.split(//)
    string2 = string2.split(//)

    strands = string1.zip(string2)

    distance = 0
    strands.each do |strand|
      distance += 1 if strand[0] != strand[1]
    end
    
    return distance
  end

end
