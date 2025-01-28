require 'rails_helper'

RSpec.describe Calculator, type: :model do
  context 'Test for empty string' do  
    it "returns 0 for an empty string" do
      data = Calculator.create
      expect(data.add('')).to eq(0)
    end

    it 'returns the number itself for a single number' do
      data = Calculator.create
      expect(data.add('1')).to eq(1)
    end

    it 'should return the sum of two numbers' do
      data = Calculator.create
      expect(data.add('1, 5')).to eq(6)
    end

    it 'should return the sum of multiple numbers' do
      data = Calculator.create
      expect(data.add('1,2,3')).to eq(6)
    end

    it 'handles newlines between numbers' do
      data = Calculator.create
      expect(data.add("1\n2,3")).to eq(6)
    end

  end
end
# ==========================

# # test/models/calculator_test.rb
# require 'test_helper'

# class CalculatorTest < ActiveSupport::TestCase
#   test "should return 0 for empty string" do
#     calculator = Calculator.new
#     assert_equal 0, calculator.add("") 
#   end
# end


# ===============
# require 'rails_helper'

# RSpec.describe StringCalculator do
#   describe '#add' do
#     it 'returns 0 for an empty string' do
#       calculator = StringCalculator.new
#       expect(calculator.add('')).to eq(0)
#     end
#   end
# end