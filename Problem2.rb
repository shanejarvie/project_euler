#Calculate sum of even fibonnacis < 4,000,000
def problem2(num)

  prev = 1
  curr = 2

  out = 0


  while (curr < num)
    if curr % 2 == 0
      out += curr
    end

    temp = curr
    curr = prev + curr
    prev = temp

  end

  puts out
  
end

problem2(4000000)