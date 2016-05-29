require 'benchmark'

# Solution 1, uber naive
def naive_prime?(integer)
  if integer < 1 then raise ArgumentError.new("Positive integers only")
  end
  return false if integer == 1
  for i in 2..(integer/2)
    if (integer % i) == 0
      return false
    end
  end
  true
end

# Solution 2, slightly less naive  
# Notes: 
#   1. All primes other than 2 or 3 can be described as:
#     6x +/-1, x being some positive integer
#   2. If a n doesn't have any factors below SQRT(n), it doesn't, 
#     have any factors.
#   3. Think of all numbers above 4 as 6n-1, 6n+0, 6n+1, 6n+2, 6n+3, 6n+4.
#      2 % 6n+0/6n+2/6n+4 == 0 and 3 % 6n+3 == 0. So n % 2/3 == 0 will take 
#      care of any 6n+0/6n+2/6n+4/6n+3 factors. So all that's left to test 
#      are 6n-1 and 6n+1 (multiples of 5 and 7)

def naive_prime2?(n)
  if n <= 1 
    return false
  elsif n <= 3 
    return true
  elsif n % 2 == 0 || n % 3 == 0
    return false 
  end
  # only tests multiples of 6 +/- 1
  i = 5 
  while i * i <= n
    if n % i == 0 || n % (i + 2) == 0 
      return false
    end
    i += 6
  end
  return true
end

# # Random numbers
# rand1 = Random.new_seed
# random_array1 = []
# 10.times {random_array1 << Random.new_seed / 100000000000}

# # Prime numbers
# prime1 = 15485863
# prime2 = 982451653
# prime_array1 = [ 15485447, 15485471, 15485473, 15485497, 15485537, 15485539, 15485543, 15485549, 15485557, 15485567]



# Benchmark.bm do |x|
#   x.report("naive_prime?: random") { naive_prime?(rand1) }
#   x.report("naive_prime?: prime") { naive_prime?(prime1) }
#   x.report("naive_prime?: random_array") do
#     random_array1.map {|x| naive_prime?(x)}
#   end  
#   x.report("naive_prime?: prime_array") do
#     prime_array1.map {|x| naive_prime?(x)}
#   end  
#   x.report("naive_prime2?: random") { naive_prime2?(rand1) }
#   x.report("naive_prime2?: prime") { naive_prime2?(prime1) }
#   x.report("naive_prime2?: random_array") do
#     random_array1.map {|x| naive_prime2?(x)}
#   end  
#   x.report("naive_prime2?: prime_array") do
#     prime_array1.map {|x| naive_prime2?(x)}
#   end
# end 


# describe 'naive_prime?' do 
#   it 'returns true for 1' do
#     expect(naive_prime?(1)).to eq(false)
#   end  
#   it 'returns true for 2' do
#     expect(naive_prime?(2)).to eq(true)
#   end  
#   it 'returns true for 3' do
#     expect(naive_prime?(3)).to eq(true)
#   end 
#   it 'returns true for 4' do
#     expect(naive_prime?(4)).to eq(false)
#   end
#   it 'returns true for 5' do
#     expect(naive_prime?(5)).to eq(true)
#   end
#   it 'returns true for 6' do
#     expect(naive_prime?(6)).to eq(false)
#   end
#   it 'returns true for 7' do
#     expect(naive_prime?(7)).to eq(true)
#   end
#   it 'returns true for 8' do
#     expect(naive_prime?(8)).to eq(false)
#   end
#   it 'returns true for 9' do
#     expect(naive_prime?(9)).to eq(false)
#   end
#   it 'returns true for 10' do
#     expect(naive_prime?(10)).to eq(false)
#   end
#    it 'returns true for 15485863' do
#     expect(naive_prime?(15485863)).to eq(true)
#   end
# end
# describe 'naive_prime2?' do 
#   it 'returns true for 1' do
#     expect(naive_prime2?(1)).to eq(false)
#   end  
#   it 'returns true for 2' do
#     expect(naive_prime2?(2)).to eq(true)
#   end  
#   it 'returns true for 3' do
#     expect(naive_prime2?(3)).to eq(true)
#   end 
#   it 'returns true for 4' do
#     expect(naive_prime2?(4)).to eq(false)
#   end
#   it 'returns true for 5' do
#     expect(naive_prime2?(5)).to eq(true)
#   end
#   it 'returns true for 6' do
#     expect(naive_prime2?(6)).to eq(false)
#   end
#   it 'returns true for 7' do
#     expect(naive_prime2?(7)).to eq(true)
#   end
#   it 'returns true for 8' do
#     expect(naive_prime2?(8)).to eq(false)
#   end
#   it 'returns true for 9' do
#     expect(naive_prime2?(9)).to eq(false)
#   end
#   it 'returns true for 10' do
#     expect(naive_prime2?(10)).to eq(false)
#   end
#    it 'returns true for 15485863' do
#     expect(naive_prime2?(15485863)).to eq(true)
#   end
# end