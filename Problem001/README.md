# Problem 1: Multiples of 3 or 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get  3, 5, 6 and 9. The sum of these multiples is 23./
Find the sum of all the multiples of 3 or 5 below 1000.


## Solution:

I'm going to leverage some MATLAB/Octave "tricks" to solve this one (specifically vectorization and logical indexing):
1. Generate a vector or 1-999 (question asks for multiples BELOW 1000)
2. Use `mod=0` for 3 or 5 to find the INDICES of values which are divisible by either 3 or 5. (The OR deals with repeats)
3. Compute the sum of those values by indexing the initial vector with the `true` locations determined by step two

ANS = 233,168