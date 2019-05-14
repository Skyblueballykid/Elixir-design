File.stream!("loans.csv")
|> Stream.map(&String.trim(&1))
|> Stream.map(&String.split(&1, ","))
|> Stream.filter(fn
  ["original_language" | _] ->
    false

  [_, "Spanish" | _] ->
    true

  [language | _] ->
    IO.puts("filter -> #{language}")
    true
end)
|> Enum.count()
