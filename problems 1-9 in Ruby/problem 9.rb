# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

class PythagoreanTriplet

  def initialize
    triplets
  end 

  def triplets 
    for c in 1..1000
      for b in 1..c
        for a in 1..b
          if a**2 + b**2 == c**2 && a + b + c == 1000
            return a * b * c
          end
        end
      end
    end
  end 

end 

print PythagoreanTriplet.new.triplets

# triplet => (200,375,425)
# product => 31875000