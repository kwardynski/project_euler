defmodule EvenFibSum do
  @ceiling 4_000_000

  def run(), do: fib_accumulator(0, 1, 0)

  defp fib_accumulator(val_current, _val_next, acc) when val_current > @ceiling,
    do: acc

  defp fib_accumulator(val_current, val_next, acc) when rem(val_current, 2) == 0,
    do: fib_accumulator(val_next, val_current + val_next, acc + val_current)

  defp fib_accumulator(val_current, val_next, acc),
    do: fib_accumulator(val_next, val_current + val_next, acc)
end

:timer.tc(EvenFibSum, :run, [])
|> IO.inspect()
