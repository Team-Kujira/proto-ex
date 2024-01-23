defmodule Cosmos.Mint.V1beta1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :minter, 1, type: Cosmos.Mint.V1beta1.Minter, deprecated: false
  field :params, 2, type: Cosmos.Mint.V1beta1.Params, deprecated: false
end