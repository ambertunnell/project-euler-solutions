# Smallest multiple

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class Divisible

  def smallest_number
    n = 21
    i = 2

    while i < 21
      if n % i == 0  
        return n if i==20
        i+=1
      else
        n+=1
        i=2
      end 
    end 
  end
  
end 

puts Divisible.new.smallest_number
# answer = 232792560