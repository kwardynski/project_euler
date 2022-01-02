defmodule EvenFib do

  def fib_accumulator(val1, val2, acc) when val1+val2 > 4000000 do
    acc
  end

  def fib_accumulator(val1, val2, acc) when rem(val1+val2,2) == 0 do
    fib_accumulator(val2, val1+val2, acc+val1+val2)
  end

  def fib_accumulator(val1, val2, acc) do
    fib_accumulator(val2, val1+val2, acc)
  end

end
