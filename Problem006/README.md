# Problem 6: Sum Square Difference
The sum of the squares of the first ten natural numbers is,\
1<sup>2</sup> + 2<sup>2</sup> + ... + 10<sup>2</sup> = 385

The square of the sum of the first ten natural numbers is,\
(1 + 2 + ... + 10)<sup>2</sup> = 55<sup>2</sup> = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is,\
3025-385=2640

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

## Solution:
Let's go back to MATLAB for this. My solution isn't exactly elegant or "smart", but it leverages MATLAB's vectorization for speed. Running this script on values significantly larger than 100 introduces no latency.

1. Set your `max_val` variable. The problem asks for 100 so we're going to use 100.
2. Compute in-line the differences here - we take `sum([1:100])` and square it (which is the square of the sum), then subtract `sum([1:100]).^2` (which is the sum of the squares) from that value
3. Display the result

ANS = 25164150

Timing the run with `max_val = 10000` we get comparable times to `max_val = 100`, the results are in the 0.0003 - 0.0006 s range.