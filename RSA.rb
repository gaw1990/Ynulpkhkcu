##################################################################### 

#         George's Rivest Shamir Adleman Cryptosystem 

#####################################################################
# 
# Thanks-> gmarik! 
# https://github.com/gmarik/99problems/blob/master/Ruby/arithmetic.rb
#
#
#####################################################################

#                  Greatest Common Divisor

#####################################################################
# 						  DEFINITION
#####################################################################
#
# The greatest common divisor (gcd) of two or more integers, when at 
# least one of them is not zero, is the largest positive integer that 
# divides the numbers without a remainder. 
#
#
#####################################################################
# 							METHOD
#####################################################################
#
# Method gcd: Find the greatest common divisor of two positive integers
#

def gcd(a, b)
  if (b == 0) then a
  else gcd(b, a % b)
  end
end


def gcd2(a, b)
	if b==0
	  a
	elsif a>b 
		a=(a-b)
		gcd2(a, b)
	else b>a 
		b=(b-a)
		gcd2(a, b)
	end
end


#####################################################################
#        Mini-block to compare processing time of programs
#####################################################################

def run_time

	total_time = 0

	100.times do
		start_time = Time.now

		#1234980.gcd(1029348) #fastest
		#gcd(1234980, 1029348)
		#gcd2(1234980, 1029348) #slowest

		end_time = Time.now

		run_time = end_time.to_f - start_time.to_f

		total_time += run_time

	end # times.do

	avg_time = (total_time / 100 )
	return avg_time

end #def 



#####################################################################

#                   Finding co-prime numbers

#####################################################################
# 						  DEFINITION
#####################################################################
#
# Two numbers are coprime if their greatest common divisor equals 1.
#
# Example 1: 
# 2 and 5 are coprime, because if d is a factor of 2 and d is also 
# a factor of 5 (i.e., d is a common factor of 2 and 5), then d has 
# to be 1 (or −1, technically). In other words, 
# greatest_common_divisor(2,5) = 1.
#
# Example 2: 
# 15 and 28 are co-prime, because the factors of 15 (1,3,5,15),
# and the factors of 28 (1,2,4,7,14,28) are not in common (except for 1).
#
# Example 3:
# However, 2 and 6 are not coprime, because they share the common 
# factor 2; and gcd(2,6)=2.

#####################################################################
# 							METHOD
#####################################################################

def coprime?(a, b)
  1 == a.gcd(b)
end


# p coprime?(99999, 99199) #true
# p coprime?(99999, 99198) #false


#####################################################################

#                   Euler's totient function 

########################## DEFINITION ###############################
#
# Euler's totient function phi(m) is defined as the number of positive 
# integers r (1 <= r < m) that are coprime to m.
#
# Note the special case: phi(1) = 1. 
#  
# --Examples--
#
# Example 0:  
# r (1 <= r < m)
# m = 10: r = 1,3,7,9; thus phi(m) = 4. 
#
#
#
######################### METHOD ####################################
#
# Counts positive integers less than or equal to n that are realtively 
# prime (co-prime) to n. 
#
# Input: Positive Integer(n)
# Output: Integers >= n that are co-prime to n. 
#



def totient_phi(n, m = n, acc = 1)
  if m == 1 then acc
  else totient_phi(n, m - 1, ( coprime?(n, m) ? 1:0 ) + acc)
  end
end







