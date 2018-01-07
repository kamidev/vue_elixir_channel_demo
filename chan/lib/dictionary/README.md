# Dictionary - simulate external service serving up random words

Simulate a real external service. There is only one API method: `random_word()`). 

On startup, an Elixir agent loads a list of words from disk and maintain that state in memory. The API works as long as the library is running.

## Usage

```elixir
word = Dictionary.random_word()
```

## Installation

Put this project in the `lib` folder of some other project and add a local dependency to `mix.exs`.

```elixir
def deps do
  [{:dictionary, path: "lib/dictionary"}]
end
```

You could make Dictionary [available in Hex](https://hex.pm/docs/publish) and add it as an external dependency. But that would be rather silly: Hex is not NPM. :-)


