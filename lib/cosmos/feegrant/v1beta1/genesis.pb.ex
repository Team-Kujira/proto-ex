defmodule Cosmos.Feegrant.V1beta1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allowances, 1, repeated: true, type: Cosmos.Feegrant.V1beta1.Grant, deprecated: false
end