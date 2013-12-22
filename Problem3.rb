#Calculate largest prime factor of 600851475143
#Prime Factors of 13195 are 5,7,13, 29

$primes = [2]
$primelimit = 2

#adds to prime lists of all primes <= primelimit
#doubles each time
def getPrimes()
  oldlimit = $primelimit + 1
  $primelimit *= 2

  for i in oldlimit...$primelimit
    isPrime = true
    $primes.each do |p|
      if i % p == 0
        isPrime = false
        break
      end
    end
    if isPrime
      $primes << i
    end
  end

end



def problem3(num)


  primelist = []

  #find prime factors of number
  while num > 1 do
    oldnum = num
    $primes.each do |p|
      if num % p == 0
        primelist << p
        num = num / p
        if num <= 1
          break
        end
      end
    end
    #add to list of primes if more are needed
    if num == oldnum
      getPrimes()
    end
  end
  
  puts primelist
  puts "Answer: #{primelist.last}"
end

problem3(600_851_475_143)




