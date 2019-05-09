File.stream!("largebitstamp.csv")
|> Stream.map(&String.trim(&1))
|> Stream.map(&String.split(&1, ","))
|> Stream.filter(fn
  ["Timestamp" | _] ->
    false

  [_, "NaN" | _] ->
    false

  [timestamp | _] ->
    IO.puts("filter -> #{timestamp}")

    true
    |> Enum.find(fn
      [timestamp | _] ->
        ts = String.to_integer(timestamp)
        dt = DateTime.from_unix!(ts)
        IO.puts("find -> #{timestamp} - #{dt.year}")
        dt.year == 2015
    end)
end)
