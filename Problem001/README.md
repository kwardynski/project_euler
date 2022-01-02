# Problem 1: Multiples of 3 or 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get  3, 5, 6 and 9. The sum of these multiples is 23./
Find the sum of all the multiples of 3 or 5 below 1000.

```
I'm going to leverage some MATLAB/Octave "tricks" to solve this one:

Step 1) Generate a vector of 1-999 (question asks for multiples BELOW 1000)
Step 2) Use mod=0 for 3 and 5 to find the INDICES of values which are divisible by
        either 3 or 5. (the OR deals with repeats)
Step 3) Compute the sum of those values by indexing the initial vector with the
        locations determined in step 2

ANS = 233,168
```