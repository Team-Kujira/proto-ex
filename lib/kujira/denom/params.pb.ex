defmodule Kujira.Denom.Params do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creation_fee, 1,
    repeated: true,
    type: Cosmos.Base.V1beta1.Coin,
    json_name: "creationFee",
    deprecated: false
end