defmodule Ibc.Core.Connection.V1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connections, 1,
    repeated: true,
    type: Ibc.Core.Connection.V1.IdentifiedConnection,
    deprecated: false

  field :client_connection_paths, 2,
    repeated: true,
    type: Ibc.Core.Connection.V1.ConnectionPaths,
    json_name: "clientConnectionPaths",
    deprecated: false

  field :next_connection_sequence, 3,
    type: :uint64,
    json_name: "nextConnectionSequence",
    deprecated: false

  field :params, 4, type: Ibc.Core.Connection.V1.Params, deprecated: false
end