class StringCalculator 
  def self.add(numbers)
    return 0 if numbers.nil? || numbers == ""

		answer = numbers.split(",").map(&:to_i)
		return answer[0] if answer.length == 1

		return answer.sum
	end
end