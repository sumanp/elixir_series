defmodule Playing do
  @moduledoc """
  Documentation for `Playing`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Playing.hello()
      :world

  """
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
end
