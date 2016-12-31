module BookKeeping
  VERSION = 4
end

class Complement
  RNA_MAP = {
              'G' => 'C',
              'C' => 'G',
              'T' => 'A',
              'A' => 'U'
            }
            
  def self.of_dna(dna)
    dna.each_char.map do |char|
      RNA_MAP.fetch(char) { return '' }
    end.join
  end
end
