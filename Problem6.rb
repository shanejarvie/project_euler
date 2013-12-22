#Calculate square of sums difference to sum of squares
def problem6(num)


  sumofsquares = 0
  for i in 1..num

    sumofsquares += i**2
  end

  squareofsums = (num*(num+1)/2)**2


  puts squareofsums - sumofsquares;
  
end

problem6(100)