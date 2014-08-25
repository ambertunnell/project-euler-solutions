require 'pry'
# Largest prime factor
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

class LargestPrimeFactor

  attr_accessor :number, :factors, :prime_factors, :not_prime, :largest_prime_factor

  def initialize(number)
    @number = number
    factors_arr
    prime_factors_arr
  end 

  def factors_arr
    n= 2
    @factors = []
    while n < Math.sqrt(@number)
      if @number % n == 0
        @factors << n
        puts "#{n} is a factor"
      end 
      n += 1
    end 
  end 

  def prime_factors_arr
    
    @not_prime = []
    @prime_factors = []

    @factors.each do |num|
      n = 2
      while n < num
        if num % n == 0
          @not_prime << num 
          break 
        end 
        n+=1
      end 
    end  

    @factors.each do |factor|
      unless @not_prime.include?(factor)
        @prime_factors << factor 
        puts "#{factor} is prime"
      end 
    end

  end

  def largest_prime_factor
    @prime_factors.last
  end 

end


# puts LargestPrimeFactor.new(600851475143).largest_prime_factor
# answer: 6857