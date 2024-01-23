defmodule Cosmos.Crypto.Multisig.LegacyAminoPubKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :threshold, 1, type: :uint32

  field :public_keys, 2,
    repeated: true,
    type: Google.Protobuf.Any,
    json_name: "publicKeys",
    deprecated: false
end