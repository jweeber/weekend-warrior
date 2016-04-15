
class Complement

	def self.of_dna(dna_strand)

		rna = []
		dna_strand.split(//).each do |nucleotide|
			if nucleotide.match("A")
				rna << "U"
			elsif nucleotide.match("T")
				rna << "A"
			elsif nucleotide.match("C")
				rna << "G"
			elsif nucleotide.match("G")
				rna << "C"
			else
				raise ArgumentError
			end
		end
		return rna.join
	end

	def self.of_rna(rna_strand)

	dna = []
	rna_strand.split(//).each do |nucleotide|
		if nucleotide.match("A")
			dna << "T"
		elsif nucleotide.match("U")
			dna << "A"
		elsif nucleotide.match("C")
			dna << "G"
		elsif nucleotide.match("G")
			dna << "C"
		else
			raise ArgumentError
		end
	end
	return dna.join
end

end
