defmodule Playing do
  # alias MyApp.Customers.Orders.Process, as: OrderProcessor
  # alias MyApp.Customers.Jobs.Process, as: JobProcessor
  @moduledoc """
  Documentation for `Playing`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Playing.hello()
      :world

  """
  # The struct gets the name of the module.
  defstruct username: nil, email: nil, score: 0

  def hello do
    :world
  end

  def something_new do
    "This is new!"
  end

  def greeting(name) do
    "Hello #{name}"
  end

  def greeting(name, q) do
    "Hello #{name}! #{q}"
  end

  def do_stuff do
    # do stuff that can't fail or any errors are handled
    :ok # common when there is nothing meaningful to return
  end

  # Elixir does not support explict/early return unlike ruby
  # Once you get comfortable with pattern matching in functions, you won’t miss early returns.

  def public_work(input) do
    private_work(input)
  end

  defp private_work(_input) do
    IO.puts "working!"
  end

  def process_name(name, func) do
    func.(name)
  end

  def some_function(value \\ :default) do # set default value
    value
  end

  def greeting_with_compliment(name, compliment \\ "You look nice today") do
    "Greetings #{name}! #{compliment}"
  end

  # Atoms are a significant part of Elixir. In fact, Elixir modules are atoms!
  # An alias is not an import. It is only a name shortcut.

end
