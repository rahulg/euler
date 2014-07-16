/*
Project Euler Problem 3
=======================

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143?
*/

var num = 600851475143
var n = 2, maxN = n

while n*n <= num {
	if num % n == 0 {
		num /= n
		maxN = n
	} else {
		++n
	}
}

if num > maxN {
	maxN = num
}

println(maxN)
