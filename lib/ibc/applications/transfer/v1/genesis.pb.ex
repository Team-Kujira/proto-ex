defmodule Ibc.Applications.Transfer.V1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false

  field :denom_traces, 2,
    repeated: true,
    type: Ibc.Applications.Transfer.V1.DenomTrace,
    json_name: "denomTraces",
    deprecated: false

  field :params, 3, type: Ibc.Applications.Transfer.V1.Params, deprecated: false

  field :total_escrowed, 4,
    repeated: true,
    type: Cosmos.Base.V1beta1.Coin,
    json_name: "totalEscrowed",
    deprecated: false
end