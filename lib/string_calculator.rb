class StringCalculator 
  def self.add(numbers)
    return 0 if numbers.nil? || numbers == ""

		delimiter_regex = /,|\n/

		if numbers.start_with?("//")
	    delimiter_line, numbers = numbers.split("\n", 2)
       custom_delimiter = delimiter_line[2..]
      delimiter_regex = Regexp.new(Regexp.escape(custom_delimiter))
		end
		
		answer = numbers.split(delimiter_regex).map(&:to_i)

		negatives = answer.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(", ")}" if negatives.any?
		
		return answer.sum
	end
end