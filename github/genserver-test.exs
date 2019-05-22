defmodule ShoppingList do
  use GenServer

  # Client API

  def start_link do
    GenServer.start_link(__MODULE__, :ok, [])
  end

  def read(pid) do
    GenServer.call(pid, {:read})
  end

  def add(pid, item) do
    GenServer.cast(pid, {:add, item})
  end


  # Server Callbacks


end
