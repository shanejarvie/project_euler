#Use a Sieve of Eratosthenes to generate primes and output an answer
def sieve(blocksize)
    primes = []

    
    nums = (2).step(blocksize).to_a

    i = 0
    while i < blocksize
        if (nums[i] > -1)   #found prime
            primes << nums[i]
            (i..blocksize-1).step(nums[i]) {|x| nums[x] = -1} #mark all multiples of the prime
        end
        i += 1
    end  
  
    answer = 0
    primes.map { |x| answer += x}
    puts "Answer: #{answer}"

end



sieve(2_000_000)


