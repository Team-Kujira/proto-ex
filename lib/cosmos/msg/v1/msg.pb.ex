defmodule Cosmos.Msg.V1.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  extend Google.Protobuf.ServiceOptions, :service, 11_110_000, optional: true, type: :bool

  extend Google.Protobuf.MessageOptions, :signer, 11_110_000, repeated: true, type: :string
end