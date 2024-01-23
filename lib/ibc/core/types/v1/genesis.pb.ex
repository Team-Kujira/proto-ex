defmodule Ibc.Core.Types.V1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_genesis, 1,
    type: Ibc.Core.Client.V1.GenesisState,
    json_name: "clientGenesis",
    deprecated: false

  field :connection_genesis, 2,
    type: Ibc.Core.Connection.V1.GenesisState,
    json_name: "connectionGenesis",
    deprecated: false

  field :channel_genesis, 3,
    type: Ibc.Core.Channel.V1.GenesisState,
    json_name: "channelGenesis",
    deprecated: false
end