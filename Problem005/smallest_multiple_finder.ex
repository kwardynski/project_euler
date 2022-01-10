defmodule SmallestMultipleFinder do

  # Main driver
  def main(max_value) do
    Enum.to_list(2..max_value)
    |> Enum.map(fn x -> return_composition(x, max_value) end)
    |> Enum.reduce(1, fn {num, exp}, acc -> acc*:math.pow(num, exp) end)
  end


  # Returns a tuple  of {number, largest_exponent}
  #   - If number is not prime, largest_exponent defaults to 0
  #   - If number is prime, largest exponent is the maximum
  #     that number can be raised to without exceeding max_value
  def return_composition(number, max_value) do
    case is_prime(number) do
      true  -> {number, largest_exponent(number, max_value, 0)}
      false -> {number, 0}
    end
  end


  # Returns the largest exponent a number can be raised to without
  # exceeding max_value
  def largest_exponent(number, ceiling, exponent) do
    cond do
      :math.pow(number, exponent+1) <= ceiling -> largest_exponent(number, ceiling, exponent+1)
      true -> exponent
    end
  end


  # Checks whether a number is prime. 2 defaults to prime,
  # however all other even numbers default to false
  def is_prime(2),                        do: true
  def is_prime(num) when rem(num,2) == 0, do: false
  def is_prime(num) do
    max_query_val = round(:math.sqrt(num))                          # largest number you need to check is sqrt(num)
    query_list = Enum.drop_every(Enum.to_list(2..max_query_val),2)  # generate list of values from 3->max_query_val skipping even numbers
    prime_checker(num, query_list, true)                            # pass to prime_checker support function
  end


  # Recursively checks if a number is prime based on the query_list
  # determined by is_prime above.
  # Runs through the query_list, if a value in query_list can evenly divide
  # num without a remainder, return FALSE as the number is NOT prime. If the end
  # of the list is reached before a an even divisor is found, return TRUE as the
  # number is likely prime.
  defp prime_checker(_, [], condition),      do: condition
  defp prime_checker(_, _, false),           do: false
  defp prime_checker(num, [head | tail], _), do: prime_checker(num, tail, rem(num, head) != 0)

end
