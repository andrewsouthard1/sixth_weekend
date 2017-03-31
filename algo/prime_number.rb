# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

class PrimeNumber
  def is_prime?(number)
    count = number - 1
    while count > 1
      return false if number % count == 0
      count -= 1
    end
    true
  end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

  def highest_prime_number_under(number)
    count = number - 1
    while count > 1
      return count if is_prime?(count)
      count -= 1
    end
  end
end

test = PrimeNumber.new

p test.is_prime?(9)
p test.is_prime?(17)
p test.highest_prime_number_under(600851475143)