/*
Project Euler Problem 10
========================

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
*/

let maxN = 2_000_000
var sieve = [Bool](count: maxN, repeatedValue: false)
var sum: Int = 2

sieve[2] = true
for i in 3..<maxN{
	sieve[i] = (i % 2) == 1
}

for var i = 3; i < maxN; i += 2 {
	if sieve[i] {
		sum += i
		for var j = i+i; j < maxN; j += i {
			sieve[j] = false
		}
	}
}

println(sum)

