defmodule Cosmos.Authz.V1beta1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :authorization, 1,
    repeated: true,
    type: Cosmos.Authz.V1beta1.GrantAuthorization,
    deprecated: false
end