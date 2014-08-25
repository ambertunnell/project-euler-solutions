# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

class PythagoreanTriplet



def values
  @a, @b, @c = 0, 0, 0
  sum = 1000
  while @a < sum
    # while @b < sum
    #   while @c < sum
        if (@a**2 + @b**2 == @c**2) && (@a + @b + @c == 1000)
          return @a, @b, @c

        end 
 @c += 1
        
      # end
  @b += 1    
     
    # end 
     puts "a #{@a}, b #{@b}, c #{@c}"
    @a += 1
    
   
  end 
end 


   def product
    @a * @b * @c
   end  
end 

print PythagoreanTriplet.new.values