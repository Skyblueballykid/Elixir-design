# For this script to work, elixir-resources.txt needs to be in the current directory
# https://code.tutsplus.com/tutorials/working-with-file-system-in-elixir--cms-28869

# Opens the file and creates a process
{:ok, file} = File.open("elixir-resources.txt", [:read])
file |> IO.inspect()

# Reads one line
IO.read(file, :line) |> IO.inspect()

# Reads all lines
IO.read(file, :all) |> IO.inspect()

File.open("elixir-resources.txt", [:read], fn file ->
  IO.read(file, :all) |> IO.inspect()
end)

# Streaming files
File.open!("elixir-resources.txt")
|> IO.stream(:line)
|> Enum.each(&IO.inspect/1)

# Replace all newlines with cats69
File.stream!("elixir-resources.txt")
|> Stream.map(&String.replace(&1, "\n", "cats69"))
|> Enum.each(&IO.inspect/1)
