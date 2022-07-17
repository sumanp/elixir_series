defmodule Testing do
  def do_work(true), do: {:ok, "I did something!"}
  def do_work(false), do: {:ok, "I refuse to work."}
  def do_work(other), do: {:error, "I don't know what to do with #{inspect other}"}
end

# tldr; See IF as an anti-pattern
# The “Elixir way” is to prefer the use of a pattern matching over if conditionals.
# The code is flatter and easier to read.
# It values the pattern of the data over the explicit process of “poking” the data to figure out its shape.
