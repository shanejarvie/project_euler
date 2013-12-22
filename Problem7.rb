def problem7(num)
	primes = [2, 3 ,5]
	
	while primes.length < num
		maxprime = primes[primes.length-1]
		candidates = maxprime.step(maxprime+10000).to_a
		
		candidates.each do |c|
			isPrime = true;
			primes.each do |p|
				if (c % p == 0)
					isPrime = false
					break
				end
			end
			if isPrime
				primes << c
				if(primes.length == num)
					break
				end
			end
		end
	end
	primes[num-1]
end

puts problem7(10001)