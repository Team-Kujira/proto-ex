defmodule Ibc.Applications.InterchainAccounts.Controller.V1.MsgRegisterInterchainAccount do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :owner, 1, type: :string
  field :connection_id, 2, type: :string, json_name: "connectionId", deprecated: false
  field :version, 3, type: :string
end

defmodule Ibc.Applications.InterchainAccounts.Controller.V1.MsgRegisterInterchainAccountResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_id, 1, type: :string, json_name: "channelId", deprecated: false
  field :port_id, 2, type: :string, json_name: "portId", deprecated: false
end

defmodule Ibc.Applications.InterchainAccounts.Controller.V1.MsgSendTx do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :owner, 1, type: :string
  field :connection_id, 2, type: :string, json_name: "connectionId", deprecated: false

  field :packet_data, 3,
    type: Ibc.Applications.InterchainAccounts.V1.InterchainAccountPacketData,
    json_name: "packetData",
    deprecated: false

  field :relative_timeout, 4, type: :uint64, json_name: "relativeTimeout", deprecated: false
end

defmodule Ibc.Applications.InterchainAccounts.Controller.V1.MsgSendTxResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequence, 1, type: :uint64
end

defmodule Ibc.Applications.InterchainAccounts.Controller.V1.Msg.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ibc.applications.interchain_accounts.controller.v1.Msg",
    protoc_gen_elixir_version: "0.11.0"

  rpc :RegisterInterchainAccount,
      Ibc.Applications.InterchainAccounts.Controller.V1.MsgRegisterInterchainAccount,
      Ibc.Applications.InterchainAccounts.Controller.V1.MsgRegisterInterchainAccountResponse

  rpc :SendTx,
      Ibc.Applications.InterchainAccounts.Controller.V1.MsgSendTx,
      Ibc.Applications.InterchainAccounts.Controller.V1.MsgSendTxResponse
end

defmodule Ibc.Applications.InterchainAccounts.Controller.V1.Msg.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Applications.InterchainAccounts.Controller.V1.Msg.Service
end