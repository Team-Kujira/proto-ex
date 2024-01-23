defmodule Cosmos.Crypto.Secp256k1.PubKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :bytes
end

defmodule Cosmos.Crypto.Secp256k1.PrivKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :bytes
end