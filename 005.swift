/*
Project Euler Problem 5
=======================

2520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.

What is the smallest number that is evenly divisible by all of the numbers
from 1 to 20?
*/

let chk = [ 11, 13, 14, 16, 17, 18, 19, 20 ]

for var i = 2520; ; i += 2520 {
	var ok = true
	for d in chk {
		if i % d != 0 {
			ok = false
			break
		}
	}
	if ok {
		println(i)
		break
	}
}
