/*
Project Euler Problem 7
=======================

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
that the 6^th prime is 13.

What is the 10001^st prime number?
*/

import Darwin

func oddIsPrime(n: Int) -> Bool {
	let sqN = Int(sqrt(Double(n)))
	for var d = 3; d <= sqN; d += 2 {
		if n % d == 0 {
			return false
		}
	}
	return true
}

var num = 1, numPrimes = 1

while numPrimes < 10001 {
	num += 2
	if oddIsPrime(num) {
		++numPrimes
	}
}

println(num)

