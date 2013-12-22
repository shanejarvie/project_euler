#Smallest Multiple
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?



def problem5()

	#list of factors(excluding 20), which contain the set (1..20) as factors
	divisors =*(11..19)
	num = 20

	#check multiples of 20 for a number that is divisable by all unique factors
	while true
		isMultiple = true
		divisors.each do |d|
			if num % d != 0
				isMultiple = false
				break
			end
		end


		if isMultiple
			return num
		else
			num += 20
		end
	end
end


puts problem5