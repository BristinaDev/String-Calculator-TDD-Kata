# String Calculator Kata (Ruby + RSpec)

This project is an implementation of the **String Calculator Kata** using **Test-Driven Development (TDD)** in Ruby.

---
## Requirements

- Ruby (>= 3.0 recommended)
- Bundler
- RSpec

---
## Setup

```bash
# Install dependencies
bundle install

# Run RSpec tests
bundle exec rspec

### Features Implemented

Returns 0 for empty string.
Returns number for single input.
Adds two or more comma-separated numbers.
Supports newline \n as delimiter.
Allows custom delimiters (e.g., //;\n1;2).
Raises error for negative numbers.
Ignore numbers > 1000.

### StringCalculator
describe StringCalculator do
  describe ".add" do
    it "return 0 for empty string"
    it "return the number for single input"
    it "add two number comma separated numbers"
    it "add multiple numbers with comma separated values"
    it "add numbers even with escape sequence in middle"
    it "add with custom delimiter"
    it "raise error when negative numbers are present"
    it "add ignores numbers greater than 1000"
  end
end

.......
Finished in 0.00692 seconds (files took 0.08995 seconds to load)
8 examples, 0 failures

## Example Usage

```ruby
StringCalculator.add("")          # => 0
StringCalculator.add("1,2,3")     # => 6
StringCalculator.add("1\n2,3")    # => 6
StringCalculator.add("//;\n1;2;3") # => 6
StringCalculator.add("1001,2")    # => 2

