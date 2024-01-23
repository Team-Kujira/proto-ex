defmodule Ibc.Lightclients.Localhost.V2.ClientState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :latest_height, 1,
    type: Ibc.Core.Client.V1.Height,
    json_name: "latestHeight",
    deprecated: false
end