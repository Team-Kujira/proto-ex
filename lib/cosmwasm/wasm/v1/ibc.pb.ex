defmodule Cosmwasm.Wasm.V1.MsgIBCSend do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel, 2, type: :string, deprecated: false
  field :timeout_height, 4, type: :uint64, json_name: "timeoutHeight", deprecated: false
  field :timeout_timestamp, 5, type: :uint64, json_name: "timeoutTimestamp", deprecated: false
  field :data, 6, type: :bytes
end

defmodule Cosmwasm.Wasm.V1.MsgIBCSendResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequence, 1, type: :uint64
end

defmodule Cosmwasm.Wasm.V1.MsgIBCCloseChannel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel, 2, type: :string, deprecated: false
end