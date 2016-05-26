###############################################################################

# George's Notes and Methods for Prime Number Generation and Detection! 

###############################################################################





#                         Prime Test

# Pseudocode:
# Input: a positive integer(n)
# Output: A boolean value for whether n is a prime number
#
# -take the positive integer, modulus it by every number between itself and 1
# -if for any of those moduluses == 0 then return false, if not return true
#

def prime?(integer)
n = integer
if n < 1 then raise ArgumentError.new("Positive integers only")
end

for i in 2..(n/2)
	if (n % i) == 0
		return false
	end
end

true 
end

# time = Time.now 
# p prime?(rand(99999999999999))
# time2 = Time.now

# bench = time2 - time
# p bench * 1000


# def gen_random_prime
# 	n = rand(10)
#   prime = factorial(n) + 1
# end

def factorial(n) 
	factorial_sum = 1
	while n > 0
		factorial_sum = n * factorial_sum
		n -= 1
	end
	factorial_sum
end

def build_primes
	n = 1
	loop do
		n = factorial(n) + 1
		p n 
	end

end

build_primes
# p gen_random_prime
# p factorial(100)
# p gen_random_prime


# 					GRAVEYARD



# def gen_prime
# 	random_num = rand(99999999999999)

# 	random_num = random_num + 1 if random_num % 2 == 0



# 	until prime?(random_num) == true
# 		random_num = 2
# 		random_num
# 	end
# 	puts random_num
# end

# p gen_prime
#                 Shitty Prime Generator


#UNHAPPY 
# def gen_prime
# prime_start = rand(9999999999)
# 	until prime?(prime_start) == true do 
# 		prime_start -= 1
# 		p prime_start
# 	end

# end


# p gen_prime