# Indodax API

Indodax Exchange API library for elixir

![Indodax](https://user-images.githubusercontent.com/13211518/57278076-ce1c1980-70cf-11e9-855a-4a615fa729a0.png)

[Indodax](https://www.indodax.com) is crypto exchange based in Indonesia.

The purpose of this library is to provide simple api wrapper which will always give you familiar tupple as return ``` {:ok, result} or {:error, reason} ```, so you can simply pattern match your return and focus on your automated trading logic right away. All the result will be a Map.

This is a fork from [Tokenomy library](https://github.com/virkillz/tokex)

The complete list of API can be founded in [Indodax's official API Documentation page](https://github.com/btcid/indodax-official-api-docs).

Some example of API call:


  ```
iex(1)> Indodax.summaries
{:ok,
 %{
   "prices_24h" => %{
     "stqeth" => "90",
     "pxgten" => "2500000",
     "npxsbtc" => "15",
     ...
   },
   "prices_7d" => %{
     "stqeth" => "90",
     "pxgten" => "3110000",
     "npxsbtc" => "21",
     "verieth" => "32970000",
     ...
   },
   "server_time" => 1552103666,
   "tickers" => %{
     "ont_btc" => %{
       "buy" => "0.00000852",
       "high" => "0.00018002",
       "last" => "0.00018002",
       "low" => "0.00018002",
       "name" => "Ontology",
       "sell" => "0.00047888",
       "vol_btc" => "0.00000000",
       "vol_ont" => "0.00000000"
     },
     "mas_ten" => %{
       "buy" => "0.0051",
       "high" => "0.041",
       "last" => "0.041",
       "low" => "0.041",
       "name" => "MidasProtocol",
       "sell" => 0,
       "vol_mas" => "0.00000000",
       "vol_ten" => "0.00000000"
     },
     "appc_eth" => %{
       "buy" => "0.00001",
       "high" => "0.00050525",
       "last" => "0.00050525",
       ...
     },
     "ont_ten" => %{"buy" => "7", "high" => "7.8", ...},
     "six_ten" => %{"buy" => "0.0018", ...},
     "lrc_btc" => %{...},
     ...
   }
 }}

  ```





## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `indodax` to your list of dependencies in `mix.exs`:

To use this library you need to generate API key and secret from your indodax user profile. https://indodax.com/trade_api


1. Add dependency into your `mix.exs`:

```elixir
def deps do
  [
    {:indodax, "~> 0.1.0"}
  ]
end
```


2. Get the dependency

```
mix deps.get
```


3. Add your Indodax Key and Secret into `config.exs`.

```
config :indodax,
  public: "XXXXXXXX-XXXXXXXX-XXXXXXXX-XXXXXXXX-XXXXXXXX",
  secret: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

```

Done! Now you can use it inside your code.


The complete docs can be found at [https://hexdocs.pm/indodax](https://hexdocs.pm/indodax/readme.html#content).

