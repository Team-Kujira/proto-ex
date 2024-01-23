defmodule Ibc.Applications.Transfer.V1.MsgTransfer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :source_port, 1, type: :string, json_name: "sourcePort", deprecated: false
  field :source_channel, 2, type: :string, json_name: "sourceChannel", deprecated: false
  field :token, 3, type: Cosmos.Base.V1beta1.Coin, deprecated: false
  field :sender, 4, type: :string
  field :receiver, 5, type: :string

  field :timeout_height, 6,
    type: Ibc.Core.Client.V1.Height,
    json_name: "timeoutHeight",
    deprecated: false

  field :timeout_timestamp, 7, type: :uint64, json_name: "timeoutTimestamp", deprecated: false
  field :memo, 8, type: :string
end

defmodule Ibc.Applications.Transfer.V1.MsgTransferResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequence, 1, type: :uint64
end

defmodule Ibc.Applications.Transfer.V1.Msg.Service do
  @moduledoc false
  use GRPC.Service, name: "ibc.applications.transfer.v1.Msg", protoc_gen_elixir_version: "0.11.0"

  rpc :Transfer,
      Ibc.Applications.Transfer.V1.MsgTransfer,
      Ibc.Applications.Transfer.V1.MsgTransferResponse
end

defmodule Ibc.Applications.Transfer.V1.Msg.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Applications.Transfer.V1.Msg.Service
end