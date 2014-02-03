# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

class LargestPrime
  @@primes = [2]

  def self.largest_prime_factor_for(number)
    return number if prime?(number)
    prime_factorization(number)
    @@primes.max
  end

  def self.prime_factorization(number)
    factors = find_two_factors(number)
    factors.each do |i|
      if factors.include?(nil)
        break
      elsif prime?(i)
        @@primes << i
      else
        prime_factorization(i)
      end
    end
  end

  def self.find_two_factors(number)
    factor1 = nil
    factor2 = nil
    (2...number/2).each do |i|
      if number % i == 0
        factor1 = i
        factor2 = number / i
        break
      end
    end
    [factor1, factor2]
  end

  def self.prime?(number)
    !(2...number/2).any? { |i| number % i == 0 }
  end
end

LargestPrime.largest_prime_factor_for(600851475143)