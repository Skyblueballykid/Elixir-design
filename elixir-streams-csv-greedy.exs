# https://www.poeticoding.com/processing-large-csv-files-with-elixir-streams/

# Starts Erlang Observer
# iex :observer.start

### Greedy Evaluation

File.read!("largebitstamp.csv")
|> String.split("\n")
|> Enum.map(&String.split(&1, ","))
|> Enum.filter(fn
  ["Timestamp" | _] -> false
  [_, "NaN" | _] -> false
  _ -> true
end)
|> Enum.find(fn
  [timestamp | _] ->
    dt =
      timestamp
      |> String.to_integer()
      |> DateTime.from_unix!()

    dt.year == 2015
end)
|> IO.inspect()
