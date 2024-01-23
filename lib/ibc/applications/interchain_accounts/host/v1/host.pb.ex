defmodule Ibc.Applications.InterchainAccounts.Host.V1.Params do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :host_enabled, 1, type: :bool, json_name: "hostEnabled", deprecated: false

  field :allow_messages, 2,
    repeated: true,
    type: :string,
    json_name: "allowMessages",
    deprecated: false
end