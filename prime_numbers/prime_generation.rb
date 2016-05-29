# this method takes an extremely large range of numbers, checks each one for primality, returns an array of the primes
require_relative 'prime?.rb'
def generate_primes 
  array = 2..10000
  prime_array = []
  array.each do |n|
    prime_array << n if naive_prime2?(n)
  end
  prime_array
end

p generate_primes