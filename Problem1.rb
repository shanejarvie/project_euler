#Calculate sum of multiples of 3 and 5
def problem1(num)
  i = 3
  answer = 0
  while i < num do
    answer += i
    i += 3
  end
  
  j = 5
  while j < num do
    if j % 3 != 0
      answer += j
    end
    j += 5
  end
  puts answer
  
end

problem1(1000)