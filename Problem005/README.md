# Problem 5: Smallest Multiple

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.\
What is the smallest positive number that is evenly divisible by all the numbers from 1 to 20?

## Solution:
My solution is going to require some recursion and list iteration, so I'm going to go back to Elixir for this one to ensure it's speedy.\
I'm going to take the route of prime factorization - that is I'm going to pull every prime factor from 1-20, find the maximum exponent that number can be raised to without exceeding the ceiling (20), then multiply those values together - i.e. 2 can be raised to the power of 4 before it exceeds 20, 3^2, 5^1, etc.\
All numbers which _are not_ prime can be composed of a prime number smaller than it, therefore they can safely be ignored when computing the LCM of all numbers from 1-20.

I'll break down how the main driver in `SmallestMultipleFinder` works below:
1. First generate a list from 2->max_value (using 20 for this problem)
2. Convert this list into a list of tuples of {list, largest_exponent} as described above. If the number is prime, largest_exponent is set to 0, else the function `largest_exponent` iteratively finds the max power to which the number can be raised before it exceeds max_value passed to `SmallestMultipleFinder.main/1`
```
[
    {2, 4}, {3, 2}, {4, 0}, {5, 1}, {6, 0}, 
    {7, 1}, {8, 0}, {9, 0}, {10, 0}, {11, 1}, 
    {12, 0}, {13, 1}, {14, 0}, {15, 0}, {16, 0}, 
    {17, 1}, {18, 0}, {19, 1}, {20, 0}
]
```
3. Multiply all these numbers to find the answer.
```
2^4 * 3^2 * 4^0 * 5^1 ... etc
```

## Answer:
```
iex smallest_multiple_finder.ex
iex(1)> SmallestMultipleFinder.main(20)
232792560.0
```

Using Elixir makes this ridiculously fast, computing the LCM of values from 1->500 takes less than 1/1000<sup>th</sup> of a second!
```
iex(2)> :timer.tc(SmallestMultipleFinder, :main, [600])
{777, 8.525524240815563e257}
iex(3)> :timer.tc(SmallestMultipleFinder, :main, [600])
{481, 8.525524240815563e257}
iex(4)> :timer.tc(SmallestMultipleFinder, :main, [600])
{267, 8.525524240815563e257}
iex(5)> :timer.tc(SmallestMultipleFinder, :main, [600])
{903, 8.525524240815563e257}
```