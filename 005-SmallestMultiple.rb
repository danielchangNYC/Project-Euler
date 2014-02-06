# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

num = (1..20).inject(1) { |result, n| result.lcm n }
puts "Smallest evenly divisible number is #{ num }."

# ORIGINAL SOLUTION:
# factors = [11, 12, 13, 14, 15, 16, 17, 18, 19]
# n = 120452800
# searching = true

# while searching
#   puts "Current: #{n}"
#   if factors.select { |i| n % i != 0 }.empty?
#     searching = false
#     puts "The number is #{n}"
#   end
#   n += 20
# end