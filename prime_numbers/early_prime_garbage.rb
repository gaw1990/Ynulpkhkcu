###############################################################################

# George's Notes and Methods for Prime Number Generation and Detection! 

###############################################################################





#                         Prime Test

# If integer is prime, integer is returned, if not it's largest factor is returned
def prime?(integer)
n = integer
if n < 1 then raise ArgumentError.new("Positive integers only")
end
largest_factor = nil
for i in 2..(n/2)
	if (n % i) == 0
		largest_factor = i
	end
end

largest_factor ||= n 
end


def factorial(n) 
	factorial_sum = 1
	while n > 0
		factorial_sum = n * factorial_sum
		n -= 1
	end
	factorial_sum
end

def build_primes(prime_number)
	p_fact = factorial(prime_number)
	next_prime = prime?(p_fact + 1)
	p next_prime
	build_primes(next_prime)
end


p build_primes(2)
			


      # GRAVEYARD



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