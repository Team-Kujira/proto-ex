defmodule Cosmos.Crypto.Hd.V1.BIP44Params do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :purpose, 1, type: :uint32
  field :coin_type, 2, type: :uint32, json_name: "coinType"
  field :account, 3, type: :uint32
  field :change, 4, type: :bool
  field :address_index, 5, type: :uint32, json_name: "addressIndex"
end