defmodule Cosmos.Evidence.V1beta1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :evidence, 1, repeated: true, type: Google.Protobuf.Any
end