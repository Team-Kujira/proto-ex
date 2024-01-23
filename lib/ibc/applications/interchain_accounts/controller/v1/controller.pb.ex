defmodule Ibc.Applications.InterchainAccounts.Controller.V1.Params do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :controller_enabled, 1, type: :bool, json_name: "controllerEnabled", deprecated: false
end