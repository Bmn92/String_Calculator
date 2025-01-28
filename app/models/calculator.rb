class Calculator < ApplicationRecord
  def add(str_numbers)
    return 0 if str_numbers.empty?
    str_numbers.to_i 
  end
end