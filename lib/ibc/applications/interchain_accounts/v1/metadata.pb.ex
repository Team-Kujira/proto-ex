defmodule Ibc.Applications.InterchainAccounts.V1.Metadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string

  field :controller_connection_id, 2,
    type: :string,
    json_name: "controllerConnectionId",
    deprecated: false

  field :host_connection_id, 3, type: :string, json_name: "hostConnectionId", deprecated: false
  field :address, 4, type: :string
  field :encoding, 5, type: :string
  field :tx_type, 6, type: :string, json_name: "txType"
end