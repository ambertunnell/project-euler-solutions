# Largest palindrome product

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

class Palindrome

  def initialize
   products
   palindromes
  end 

  def products 
    a = 100
    @products = []
    while a < 1000 
      b = 100
      while b < 1000
        @products << (a * b)
        b+=1
      end 
      a+=1 
    end 
  end 

  def palindromes
    @palindromes = @products.select do |n|
      n.to_s == n.to_s.reverse
    end
  end 

  def largest_palindrome
    @palindromes.sort.last 
  end 

end 

puts Palindrome.new.largest_palindrome
# answer = 906609