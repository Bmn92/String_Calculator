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

    it 'should supports custom delimiters' do
      data = Calculator.create
      expect(data.add("//;\n1;2")).to eq(3)
    end

    it 'throws an exception for negative numbers' do
      data = Calculator.new
      expect { data.add("2,-8,-5") }.to raise_error("Negative numbers not allowed: -8, -5")
    end
  end
end