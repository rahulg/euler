/*
Project Euler Problem 4
=======================

A palindromic number reads the same both ways. The largest palindrome made
from the product of two 2-digit numbers is 9009 = 91 * 99.

Find the largest palindrome made from the product of two 3-digit numbers.
*/

func isPalindrome(n: Int) -> Bool {
	var strN = Array(String(n))
	var maxI = countElements(strN) - 1

	for i in 0..<(countElements(strN) / 2) {
		if strN[i] != strN[maxI - i] {
			return false
		}
	}
	return true
		
}

func biggestPalin() -> Int {
	var max = 0
	for var i = 999; i > 99; --i {
		if i * i < max {
			break
		}
		for var j = i; j > 99; --j {
			if i * j < max {
				break
			}
			if isPalindrome(i*j) {
				max = i * j
			}
		}
	}
	return max
}

println(biggestPalin())
