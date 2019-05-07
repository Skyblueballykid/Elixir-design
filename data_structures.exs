### Anonymous Functions

add = fn a, b -> a + b end

# Dot required for anonymous function, but not for named function
add.(1, 2)
IO.inspect(add.(1, 2))

# is_function(add)
# true

is_function(add, 2)
# true

### Atoms
:hello

true

### Boolean 

true
false

### Charlists

IO.inspect('hello' == "hello")

### Lists

li = [1, 2, true, 3]
IO.inspect(li)

IO.inspect(hd(li))

# hd [] <- head of an empty list throws an error

IO.inspect(tl(li))

# Outputs hello
IO.puts([104, 101, 108, 108, 111])

# length[1, 2, 3]

### Linked Lists

list = [1, 2, true, 3]

# Need to use inspect, IO.puts results in an error
IO.inspect(list)

list2 = [1, 1, 1] ++ [1, 1, 1]
IO.inspect(list2)

list3 = [1, true, 2, false, 3, true] -- [true, false]
IO.inspect(list3)

### Strings

IO.puts("hello")

# "hello #{world}"

IO.puts("hello\nworld")

IO.puts("hello\nworld")

# isbinary("hello")
# true

# byte_size("hello")
# 6 bytes

IO.puts(String.length("hello"))

IO.puts(String.upcase("hello"))

IO.puts(String.downcase("HELLO"))

### Tuples
