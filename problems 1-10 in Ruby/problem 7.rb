# 10001st prime

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

class Prime

  def prime
    prime_arr = [2,3]
    n=4
    d=2
    while prime_arr.length <= 10001
      while d < n
        if (n % d) != 0
          if d == (n-1)
             prime_arr << n
          end
        else
          break
        end
        d+=1
      end 
      n+=1
      d=2
    end 
    return prime_arr[10000]
  end 

end 

p Prime.new.prime
# answer = 104743