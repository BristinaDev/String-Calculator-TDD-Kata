require "string_calculator"

RSpec.describe StringCalculator do
	describe ".add" do
		it "return 0 for empty string" do
		  expect(StringCalculator.add("")).to eq(0)
		end

		it "return the number for single input" do
			expect(StringCalculator.add("1")).to eq(1)
			expect(StringCalculator.add("15")).to eq(15)
			expect(StringCalculator.add("150")).to eq(150)
		end
	
		it "adds two comma separated numbers" do
			expect(StringCalculator.add("1,5")).to eq(6)
			expect(StringCalculator.add("1,5,5")).to eq(11)
			expect(StringCalculator.add("150,200")).to eq(350)
		end

		it "adds multiple comma separated numbers" do
			expect(StringCalculator.add("1,2,3")).to eq(6)
			expect(StringCalculator.add("1,2,3,5,10")).to eq(21)
			expect(StringCalculator.add("1,2,3,100,100,500")).to eq(706)
		end

		it "add numbers even with escape sequence in middle" do
			expect(StringCalculator.add("1\n2,3")).to eq(6)
			expect(StringCalculator.add("10\n20,30")).to eq(60)
			expect(StringCalculator.add("100\n200,300")).to eq(600)
		end

		it "add with mutiple delimeters" do
			expect(StringCalculator.add("//;\n1;2")).to eq(3)
			expect(StringCalculator.add("//-\n11-20-30")).to eq(61)
      expect(StringCalculator.add("//#\n122#200#300")).to eq(622)
		end

		it "raise error when negative numbers are presents" do
			expect { StringCalculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed -2, -3")
		end

		it "ignores numbers greater than 1000" do
			expect(StringCalculator.add("2,1001")).to eq(2)
			expect(StringCalculator.add("2,4,10014,504,3000")).to eq(510)
			expect(StringCalculator.add("2,4,5,100141212,504,323000")).to eq(515)
		end		
	end
end