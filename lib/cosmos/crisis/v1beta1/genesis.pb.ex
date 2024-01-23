defmodule Cosmos.Crisis.V1beta1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :constant_fee, 3,
    type: Cosmos.Base.V1beta1.Coin,
    json_name: "constantFee",
    deprecated: false
end