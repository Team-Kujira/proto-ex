defmodule Cosmos.Genutil.V1beta1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gen_txs, 1, repeated: true, type: :bytes, json_name: "genTxs", deprecated: false
end