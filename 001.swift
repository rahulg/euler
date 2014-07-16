/*
Project Euler Problem 1
=======================

If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
*/

var sum = 0
for num in (1..<1000) {
	sum += num % 3 == 0 ? num : num % 5 == 0 ? num : 0
}
println(sum)
