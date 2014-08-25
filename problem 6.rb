# Sum square difference

# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


class Difference

  def initialize
    sum
    square_of_sum
  end 

  def sum
    n=1
    @sum=0
    while n < 101
      @sum += (n*n)
      n+=1
    end
  end

  def square_of_sum
    temp_sum=0
    n=1
    while n < 101
      temp_sum += n
      n+=1
    end
    @squared_sum = temp_sum * temp_sum
  end

  def difference
    @squared_sum - @sum
  end 

end

p Difference.new.difference