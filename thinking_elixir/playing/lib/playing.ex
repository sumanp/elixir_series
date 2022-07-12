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
end
