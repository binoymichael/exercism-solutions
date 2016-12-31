module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(first_strand, second_strand)
    throw ArgumentError unless first_strand.length == second_strand.length

    return 0 if first_strand == second_strand

    return (0...first_strand.length).count do |index|
      first_strand[index] != second_strand[index]
    end
  end
end
