#Largest Palidromic Product
#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.


def isPalindrome(num)
	digits = num.to_s.split('')
	return (digits.reverse() == digits)
end


def isProduct(num)
	i = 999
	until i == 100 do 
		return true if num % i == 0 && ((num/i).to_s.length == 3) 
		i -= 1
	end
	return false
end


def problem5()
	i = 999999
	until i == 100000 do
		if isPalindrome(i) && isProduct(i)
			return i
		end
		i -= 1
	end
end

puts problem5()