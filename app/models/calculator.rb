class Calculator < ApplicationRecord
 	def add(str_numbers)
    return 0 if str_numbers.empty?

		# str_numbers.split(',').map(&:to_i).sum
    # str_numbers.gsub("\n", ",").split(",").map(&:to_i).sum
    
    delimiter = str_numbers.start_with?("//") ? str_numbers[2] : ','

    str_numbers = str_numbers.gsub("\n", ",") if str_numbers.include?("\n")
    str_numbers = str_numbers.gsub(",", " ") if str_numbers.include?("//")

	  num_arr = str_numbers.split(delimiter).map(&:to_i)

    negative_num = num_arr.select { |num| num < 0 }
    
    raise "Negative numbers not allowed: #{negative_num.join(', ')}" if negative_num.any?
    
    num_arr.sum
  end
end