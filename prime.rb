# Add  code here!
def prime?(number)
# test multiple numbers in an array to find out if they are prime_test_array
# eliminate even numbers not equal to 2 because they are not prime
  if number > 3 || number < -3
    if number.even?
      return false
    else
      lo = 2
      hi = Integer.sqrt(number.abs)
      prime_test_array = (3..hi).to_a
      prime_test_array = prime_test_array.select{|number| number.odd?}
      not_prime = true
      not_prime = prime_test_array.any? {|value| number % value == 0}
      return !(not_prime) # this returns whether something is prime.  Uses double negative logic.
    end
  end
#take care of edge cases 2, and 3
  if number.abs == 2 || number.abs == 3
    return true
  elsif number.abs == 1 || number == 0
    return false
  else
    puts "Logic failure"
  end
end
#   # prime_test_array.any?
# number = -1
#
# # number = Integer.sqrt(number.abs)
# # array = []
# # array = (2..number).to_a
# # puts array
# puts "#{prime(number)}"
