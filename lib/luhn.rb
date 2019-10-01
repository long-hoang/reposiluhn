module Luhn
  def self.is_valid?(num)
      num_s = num.to_s
      digit_s = num_s.split('')
      digits = digit_s.map(&:to_i)
      sum = 0
      digits.reverse.each_with_index{ |element, i| 
      i= 1+i
      temp = element
      if i.even? 
        temp = temp*2
      end 

      if temp >= 10 
        temp = temp - 9
      end
      sum = sum + temp
      }

      if sum%5 == 0
        return true
      else 
        return false 
      end
  end
end