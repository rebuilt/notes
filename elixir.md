# Elixir

## Open Console
```iex```

## View Docs

Typing 'h' in iex will open a help menu of commands.  To view docs for a specific module or function, provide the module/function as an argument to `h`

```elixir
h(Enum)
h(Enum.map)
h(Enum.reverse/1)
```

## Regular Expressions

Define the regex
```elixir
~r{regexp}
~r{regexp}ops
```

Run the regex
```elixir
iex> Regex.run ~r{[aeiou]}, "caterpillar"
["a"]
iex> Regex.scan ~r{[aeiou]}, "caterpillar"
[["a"], ["e"], ["i"], ["a"]]
iex> Regex.split ~r{[aeiou]}, "caterpillar"
["c", "t", "rp", "ll", "r"]
iex> Regex.replace ~r{[aeiou]}, "caterpillar", "*"
"c*t*rp*ll*r"
```

### Opts

| Opt | Meaning                                                                                                                                                              |
|-----|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| f   | Force the pattern to start to match on the first line of a multiline string.                                                                                         |
| i   | Make matches case insensitive.                                                                                                                                       |
| m   | If the string to be matched contains multiple lines, ^ and $ match the start and end of these lines. \A and \z continue to match the beginning or end of the string. |
| s   | Allow . to match any newline characters.                                                                                                                             |
| U   | Normally modifiers like * and + are greedy, matching as much as possible. The U modifier makes them ungreedy, matching as little as possible.                        |
| u   | Enable unicode-specific patterns like \p.                                                                                                                            |
| x   | Enable extended mode—ignore whitespace and comments (# to end of line).                                                                                              |


## Lists

Lists are implemented as linked data structures.  This means they are easy to traverse linearly but expensive to access a random element.  (To get the nth element, you have to traverse all the previous elements)

### Concatenation
```
iex> [ 1, 2, 3 ] ++ [ 4, 5, 6 ]
[1, 2, 3, 4, 5, 6]

```

### Difference

```
iex> [1, 2, 3, 4] -- [2, 4]
[1, 3]
```
### Membership

```
iex> 1 in [1,2,3,4]
true
iex> "wombat" in [1, 2, 3, 4]
false
```

## Keyword Lists

```
[name: "Dave", city: "Dallas", likes: "Programming"]
```

Gets converted to 
```
[ {:name, "Dave"}, {:city, "Dallas"}, {:likes, "Programming"} ]
```

## Dates and Times

Dates  and times use elixir sigils.  ~D[...], ~T[...]

```
iex> d1 = Date.new(2018, 12, 25)
{:ok, ~D[2018-12-25]}
iex> {:ok, d1} = Date.new(2018, 12, 25)
{:ok, ~D[2018-12-25]}
iex> d2 = ~D[2018-12-25]
~D[2018-12-25]
iex> d1 == d2
true
iex> Date.day_of_week(d1)
2
iex> Date.add(d1, 7)
~D[2019-01-01]
iex> inspect d1, structs: false
"%{__struct__: Date, calendar: Calendar.ISO, day: 25, month: 12, year: 2018}"
```


You can represent date ranges

```
iex> d1 = ~D[2018-01-01]
~D[2018-01-01]
iex> d2 = ~D[2018-06-30]
~D[2018-06-30]
iex> first_half = Date.range(d1, d2)
#DateRange<~D[2018-01-01], ~D[2018-06-30]>
iex> Enum.count(first_half)
181
iex> ~D[2018-03-15] in first_half
true
```

## Truthy values
Elixir has true, false, and nil
nil is false in Boolean context

## Operators

| operator | description       |
|----------|-------------------|
| a === b  | strict equality   |
| a !== b  | strict inequality |
| a == b   | value equality    |
| a != b   | value inequality  |
| a > b    | normal comparison |
| a >= b   | ..                |
| a < b    | ..                |
| a <= b   | ..                |


Boolean operators(expect true or false as their first argument)

| operator | description                        |
|----------|------------------------------------|
| a or b   | true if a is true; otherwise b     |
| a and b  | false if a is false; otherwise b   |
| not a    | false if a is true; otherwise true |

## Variable scope

Same as ruby

## The with Expression

```elixir
lp
=
with {:ok, file}
= File.open("/etc/passwd"),
content
= IO.read(file, :all), # note: same name as above
:ok
= File.close(file),
[_, uid, gid] = Regex.run(~r/^lp:.*?:(\d+):(\d+)/m, content)
do
"Group: #{gid}, User: #{uid}"
end
IO.puts lp #=> Group: 26, User: 26
```
