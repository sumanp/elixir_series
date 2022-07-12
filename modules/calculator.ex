# Notes: https://medium.com/@sumanpuri/intro-to-elixir-functions-66fcbb32012b

defmodule Calculator do
  alias :timer, as: Timer

  def squared(x) do
    x * x
  end
  def product_of(x, y) do
    x * y
  end

  def sum_of(x, y) do
    x + y
  end

  def subtract(x, y) when x >= y do # Guard Clause
    # :time.sleep(1_000) # non-alised Erlang function
    Timer.sleep(1_000)
    do_subtract(x, y)
  end
  def subtract(x, y) when x < y do # Guard Clause
    "x must be greater than y"
  end

  defp do_subtract(x, y) do
    x - y
  end
end

# reload modules in an iex session with r(ModuleName), i,e r(Calculator)
# Anonymous function can be written as: squared = fn(x) -> x * x end
# Shorthand of anonymous function: squared = &(&1 * &1)
# &1 is first variable, &2 second and so on passed on to the function, & is known as Capture operator
# squared.(10) > 100 # anonymour functions are called with a dot seperator between the variable & parenthesis
