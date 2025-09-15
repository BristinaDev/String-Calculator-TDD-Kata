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

		it "adds multiple comma separated numbers" do
			expect(StringCalculator.add("1,2,3")).to eq(6)
		end

		it "add numbers even with escape sequence in middle" do
			expect(StringCalculator.add("1\n2,3")).to eq(6)
		end

		it "add with mutiple delimeters" do
			expect(StringCalculator.add("//;\n1;2")).to eq(3)
		end

		it "raise error when negative numbers are presents" do
			expect { StringCalculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed -2, -3")
		end
	end
end