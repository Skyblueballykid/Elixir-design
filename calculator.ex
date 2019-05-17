defmodule Calculator do
  # Alias the erlang :timer module as Timer
  alias :timer, as: Timer

  def add(x, y) do
    :timer.sleep(1_000)
    x + y
  end

  def subtract(x, y) when x >= y do
    Timer.sleep(1_000)
    do_subtract(x, y)
  end

  defp do_subtract(x, y) do
    x - y
  end

  def subtract(x, y) when x < y do
    IO.puts("No dummy")
  end

  def divide(x, y) do
    x / y
  end

  def multiply(x, y) do
    x * y
  end

  def squared(x) do
    x * x
  end

  def pow(n, k) do
    pow(n, k, 1)
  end

  defp pow(_, 0, acc) do
    acc
  end

  defp pow(n, k, acc) do
    pow(n, k - 1, n * acc)
  end
end
