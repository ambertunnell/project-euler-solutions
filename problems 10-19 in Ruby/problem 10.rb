# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

class PrimesSum

  def is_prime?(n)
    return true if n == 2 || n == 3

    x = 2
    while x <= Math.sqrt(n)
      if n % x == 0
        return false
      end 
      x += 1
    end
    return true 
  end

  def numbers
    n = 2
    @primes = []
    while n < 2000000
      @primes << n if is_prime?(n)
      n += 1
    end 
  end 

  def sum
    numbers
    sum = 0
    @primes.each {|n| sum += n}
    sum 
  end 

end 

print PrimesSum.new.sum 
# answer = 142913828922