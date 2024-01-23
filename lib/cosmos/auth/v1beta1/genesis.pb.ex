defmodule Cosmos.Auth.V1beta1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Cosmos.Auth.V1beta1.Params, deprecated: false
  field :accounts, 2, repeated: true, type: Google.Protobuf.Any
end