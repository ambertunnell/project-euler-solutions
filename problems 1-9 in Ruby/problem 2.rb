# Even Fibonacci numbers

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

class Fibonacci

  def initialize
    @sequence = [1,2]
    build_sequence
  end 

  # creates fibonacci sequence 
  def build_sequence
    i = 2
    while (@sequence[i-1] + @sequence[i-2]) < 4000000
        @sequence << (@sequence[i-1] + @sequence[i-2])
        i+=1 
    end 
  end 


  # takes sum of even-valued terms
  def sum
    @sum = 0
    @sequence.each do |n|
      if n % 2 == 0 
        @sum += n
      end 
    end 
    return @sum 
  end 

end 

# answer = 4613732