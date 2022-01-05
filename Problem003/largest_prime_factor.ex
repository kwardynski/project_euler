defmodule LargestPrimeFinder do
  require Integer

  def driver(number) do
    largest_prime_factor = factor_handler(number, 2, -1)
    case Enum.member?([1, 2, number], largest_prime_factor) do
      true  -> "#{number} has no prime factors"
      false -> "Largest prime factor of #{number} is #{largest_prime_factor}"
    end
  end

  def factor_handler(number, query_val, factor_store) do
    cond do
      number == query_val         -> query_val
      rem(number, query_val) == 0 -> factor_handler(trunc(number/query_val),2,query_val)
      true                        -> factor_handler(number, query_val+1, factor_store)
    end
  end

end
