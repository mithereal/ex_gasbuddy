# ExGasbuddy

**Tool to grab gasbuddy.com rates**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_gasbuddy` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_gasbuddy, "~> 0.1.1"}
  ]
end
```

## Usage
```elixir
iex> zip = "85711"
iex> station_id = "177845"
iex> {_status, data, _headers} = ExGasbuddy.search(zip)
iex> {_status, data, _headers} = ExGasbuddy.fetch(station_id)
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/ex_gasbuddy>.

