# Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

class Total 

  def multiples
    n = 0
    @array_to_sum = []
    
    until n == 1000
      @array_to_sum << n if (n % 3 == 0) || (n % 5 == 0)
      n += 1
    end 
  end

  def total
    @sum = 0
    @array_to_sum.each do |n|
      @sum += n
    end 
  end 

  def sum
    multiples
    total
    return @sum
  end 


end 


# answer: 233168