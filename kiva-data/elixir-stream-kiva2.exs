# Takes the first 2 entries from the file and prints it to the console

File.stream!("loans.csv")
|> Stream.map(&String.trim(&1))
|> Stream.map(&String.split(&1, ","))
|> Enum.take(2)
|> IO.puts()
