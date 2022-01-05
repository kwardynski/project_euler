# Problem 3: Largest Prime Factor

The prime factors of 13195 are 5, 7, 13 and 29.\
What is the largest prime factor of the number 600851475143?


## Solution:

So I may have done some research to figure out how best to solve this. Trying to brute force the problem is obviously going to be incredibly expensive in both memory and processing time for such a large number so we need to be smart about how we approach this.

One incredibly elegant way of doing this is utilizing an algorithm which finds the smallest factor of a number, and if the smallest factor of _that_ number is itself, you've found the largest prime factor. Credit for xisk's description of this algorithm which can be found [here](https://math.stackexchange.com/a/389697).

Basically we check if our input number is divisible by increasing values starting at 2. If it is not divisible, increase the divisor and check again. If it is divisible, we store that divisor, re-set our query number to the result of dividing our initial number by that divisor, and re-set our divisor to 2. We continue this recursion until we find a number where it's largest factor is itself (i.e. it is prime).

ANS = 6857

