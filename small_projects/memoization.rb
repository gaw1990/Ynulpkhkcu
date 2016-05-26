def recursive_fib_memo(n)
	memo_array = []

 if n == 0
    0
  elsif n == 1
    1
  elsif n == 2
    1
  else
    recursive_nth_fibonacci_number(n-1) + recursive_nth_fibonacci_number(n-2)
  end

end








def recursive_nth_fibonacci_number(n)
  if n == 0
    0
  elsif n == 1
    1
  elsif n == 2
    1
  else
    recursive_nth_fibonacci_number(n-1) + recursive_nth_fibonacci_number(n-2)
  end
end
