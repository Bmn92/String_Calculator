class Calculator < ApplicationRecord
  def add(str_numbers)
    return 0 if str_numbers.empty?
    # str_numbers.to_i 
    # str_numbers.split(',').map(&:to_i).sum
    str_numbers.gsub("\n", ",").split(",").map(&:to_i).sum
  end
end