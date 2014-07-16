/*
Project Euler Problem 9
=======================

A Pythagorean triplet is a set of three natural numbers, a < b < c, for
which,
                             a^2 + b^2 = c^2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
*/

func triplet() -> (Int!, Int!, Int!) {
	for var c = 998; c >= 1; --c {
		for var b = c; b >= 1; --b {
			for var a = b; a >= 1; --a {
				if a + b + c < 1000 {
					break
				} else if a + b + c > 1000 {
					continue
				}
				if (a * a) + (b * b) == (c * c) {
					return (a, b, c)
				}
			}
		}
	}
	return (nil, nil, nil)
}

var a: Int!,
    b: Int!,
	c: Int!

(a, b, c) = triplet()
println(a * b * c)
