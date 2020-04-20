# Add  code here!
def prime(number)
  lo = 2
  hi = Integer.sqrt(number.abs)
  prime_test_array = (2..number).to_a
  prime_test_array << prime_test_array.select{|number| number.odd?}
# test multiple numbers in an array to find out if they are prime_test_array
# eliminate even numbers not equal to 2 because they are not prime
if number > 3 || number < -3
  if number.even?
    return false
  else
      if prime_test_array.any?{|dividend| number%dividend == 0}
        return false
      else
        return true
      end
    end
  end
else
  return true
end
  # prime_test_array.any?
number = 2

# number = Integer.sqrt(number.abs)
# array = []
# array = (2..number).to_a
# puts array
puts prime(number)
