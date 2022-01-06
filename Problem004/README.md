# Problem 4: Largest Palindrome Product

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.\
Find the largest palindrome made from the product of two 3-digit numbers.


## Solution:
I'm going to go back to MATLAB for this, a bit of vector multiplication and string comparisons should make easy (however not very elegant) work of this problem.

1. Mutliply a vector of 100:999 by it's transpose to get a 990x990 matrix containing all the numbers which have two 3-digit factors. This "only" takes up 6480kb of space so whatever.
2. Find the UNIQUE values of that matrix (so we're not wasting time looping through duplicates) and sort in descending order to save time when looping. Looping probably isn't the best way to do this but the entire script runs in under 2 seconds on my laptop.
3. Loop through the list, and break when you encouter the first value whos reversed string representation is equal to its string representation (i.e. the literal definition of a palindrome)

ANS = 906609