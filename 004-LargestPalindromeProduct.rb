# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def find_factors(current_num)
  range = (101..999).select { |i| i % 10 != 0 }
  factors = []
  found = false
  range.each do |factor|
    factor2 = current_num / factor
    if current_num % factor == 0 && factor2 <= 999 && factor2 >= 101
      factors << factor
      factors << factor2
      found = true
      puts "Factors found for #{current_num}: #{factor} and #{current_num / factor}"
      break
    end
  end
  found ? factors : nil
end

inner = (0..7).to_a.reverse!
middle = (0..9).to_a.reverse!
outer = (1..9).to_a.reverse!

largest_palindrome = catch(:palindrome) {
  outer.each do |outer_num|
    middle.each do |middle_num|
      inner.each do |inner_num|
        current_num = "#{outer_num}#{middle_num}#{inner_num}#{inner_num}#{middle_num}#{outer_num}".to_i
        if find_factors(current_num)
          throw :palindrome, current_num
        end
      end
    end
  end
}

puts "Largest Palindrome is: #{largest_palindrome}"