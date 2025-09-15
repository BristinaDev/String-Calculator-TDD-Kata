require "string_calculator"

RSpec.describe StringCalculator do
	describe ".add" do
		it "return 0 for empty string" do
		  expect(StringCalculator.add("")).to eq(0)
		end

		it "return the number for single input" do
			expect(StringCalculator.add("1")).to eq(1)
		end
	
		it "adds two comma separated numbers" do
			expect(StringCalculator.add("1,5")).to eq(6)
		end
	end
end