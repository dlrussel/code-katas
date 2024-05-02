# Define a fizzbuzz method that accepts a single number.
# The method should output every number from 1 to that argument.
#
# There are a couple caveats.
# If the number is divisible by 3, output "Fizz" instead of the number.
# If the number is divisible by 5, output "Buzz" instead of the number.
# If the number is divisible by both 3 and 5, output "FizzBuzz" instead of the number.
# If the number is not divisible by either 3 or 5, just output the number.
#
# Example: fizzbuzz(30) should print:
#
# 1
# 2
# Fizz
# 4
# Buzz
# Fizz
# 7
# 8
# Fizz
# Buzz
# 11
# Fizz
# 13
# 14
# FizzBuzz
# 16
# 17
# Fizz
# 19
# Buzz
# Fizz
# 22
# 23
# Fizz
# Buzz
# 26
# Fizz
# 28
# 29
# FizzBuzz


def fizzbuzz(number)
  count = 1

 while count <= number
  if count % 5 == 0 && count % 3 == 0
    puts "FizzBuzz"
  elsif count % 5 == 0
    puts "Buzz"
  elsif count % 3 == 0
    puts "Fizz"
  else
   puts count
  end

   count += 1
 end

end

puts fizzbuzz(30)
