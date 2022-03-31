defmodule ShoppingList do
  use GenServer

  # -- client --
  def start_link do
    GenServer.start_link(__MODULE__, [])
  end

  def add(pid, item) do
    GenServer.cast(pid, item) # asynchronous
  end

  def view(pid) do
    GenServer.call(pid, :view) # synchronous
  end

  def remove(pid, item) do
    GenServer.cast(pid, {:remove, item})
  end

  def stop(pid) do
    GenServer.stop(pid, :normal, :infinity)
  end

  # -- server --
  def terminate(_reason, list) do
    IO.puts("We are all done shopping.")
    IO.inspect(list)
  end

  def handle_cast({:remove, item}, list) do
    updated_list = Enum.reject(list, fn(i) -> i == item end)
    {:noreply, updated_list}
  end

  def handle_cast(item, list) do # asynchronous
    updated_list = [item|list]
    {:noreply, updated_list}
  end

  def handle_call(:view, _from, list) do # synchronous
    {:reply, list, list} # 2nd arg is what we want to return, 3rd arg is what state we want to continue
  end

  def init(list) do
    {:ok, list}
  end
end


# GenServer is organized into two parts: the client and the server, each running in their own process.
# you can split the client and server into separate modules
# GenServer gives us two options on how we want to update our shopping list: synchronously, where we care about a response.
# And asynchronously, where we don’t care about a response.
