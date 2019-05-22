defmodule Example do
  def next_message do

    receive do
      {:+, {a,b}} ->
        IO.puts("#{a} + #{b} = #{a+b}")
      {:-, {a,b}} ->
        IO.puts("#{a} - #{b} = #{a-b}")
    end

    next_message()
  end
end

defmodule Example2 do
  def next_message2 do
  receive do
    {:+, {a,b}, from_pid}->
      send from_pid, a + b
    {:-, {a,b}, from_pid}->
      send from_pid, a - b
    end
    next_message2()
  end
end
