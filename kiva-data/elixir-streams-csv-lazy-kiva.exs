# Attempt to filter by country name as Philippines
File.stream!("loans.csv")
|> Stream.map(&String.trim(&1))
|> Stream.map(&String.split(&1, ","))
|> Stream.filter(fn
  ["philippines" | _] ->
    false

  [country_name | _] ->
    IO.puts("filter -> #{country_name}")
    true
end)
