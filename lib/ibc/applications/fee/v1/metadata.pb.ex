defmodule Ibc.Applications.Fee.V1.Metadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fee_version, 1, type: :string, json_name: "feeVersion", deprecated: false
  field :app_version, 2, type: :string, json_name: "appVersion", deprecated: false
end