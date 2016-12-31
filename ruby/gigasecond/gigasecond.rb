module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from(input_time)
    Time.at(input_time.to_i + 10**9).utc
  end
end
