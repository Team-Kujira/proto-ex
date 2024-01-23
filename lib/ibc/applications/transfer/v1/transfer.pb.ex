defmodule Ibc.Applications.Transfer.V1.DenomTrace do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :path, 1, type: :string
  field :base_denom, 2, type: :string, json_name: "baseDenom"
end

defmodule Ibc.Applications.Transfer.V1.Params do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :send_enabled, 1, type: :bool, json_name: "sendEnabled", deprecated: false
  field :receive_enabled, 2, type: :bool, json_name: "receiveEnabled", deprecated: false
end