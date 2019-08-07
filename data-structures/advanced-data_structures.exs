### Advanced Data Structures

defmodule Adv_data_structures do
  @moduledoc """
  Summary of some more advanced Elixir data structures
  """

  ### Keyword lists

  # In Elixir, when we have a list of tuples and the first item of the tuple (i.e. the key) is an atom, we call it a keyword list

  list = [{:a, 1}, {:b, 2}]

  IO.inspect(list)

  IO.inspect(list == [a: 1, b: 2])

  # Since keyword lists are lists, we can use all operations available to lists. 

  IO.inspect(list ++ [c: 3])

  new_list = [a: 0] ++ list

  IO.inspect(new_list[:a])

  # Keyword lists are important because they have three special characteristics:

  # - Keys must be atoms.
  # - Keys are ordered, as specified by the developer.
  # - Keys can be given more than once.

  # Keyword module in elixir 

  ### Maps

  # Go-to Key-value store data structure in Elixir

  # %{} syntax

  map = %{:a => 1, 2 => :b}

  IO.inspect(map)

  IO.inspect(map[:a])

  IO.inspect(map[2])

  '''
  Compared to keyword lists, we can already see two differences:
  Maps allow any value as a key.
  Maps’ keys do not follow any ordering.
  In contrast to keyword lists, maps are very useful with pattern matching. 
  When a map is used in a pattern, it will always match on a subset of the given value
  a map matches as long as the keys in the pattern exist in the given map. 
  Therefore, an empty map matches all maps.
  The Map module provides a very similar API to the Keyword module with convenience functions to manipulate maps
  '''

  IO.inspect(Map.get(%{:a => 1, 2 => :b}, :a))

  IO.inspect(Map.put(%{:a => 1, 2 => :b}, :c, 3))

  IO.inspect(Map.to_list(map))

  IO.inspect(map)

  IO.inspect(%{map | 2 => "two"})

  IO.inspect(map.a)

  IO.inspect(map[2])

  '''
  Elixir developers typically prefer to use the map.field syntax 
  and pattern matching instead of the functions in the Map module 
  when working with maps because they lead to an assertive style of programming.
  '''

  ### Nest Data Structures
end
