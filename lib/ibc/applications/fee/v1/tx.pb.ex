defmodule Ibc.Applications.Fee.V1.MsgRegisterPayee do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
  field :relayer, 3, type: :string
  field :payee, 4, type: :string
end

defmodule Ibc.Applications.Fee.V1.MsgRegisterPayeeResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Applications.Fee.V1.MsgRegisterCounterpartyPayee do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
  field :relayer, 3, type: :string
  field :counterparty_payee, 4, type: :string, json_name: "counterpartyPayee", deprecated: false
end

defmodule Ibc.Applications.Fee.V1.MsgRegisterCounterpartyPayeeResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Applications.Fee.V1.MsgPayPacketFee do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fee, 1, type: Ibc.Applications.Fee.V1.Fee, deprecated: false
  field :source_port_id, 2, type: :string, json_name: "sourcePortId", deprecated: false
  field :source_channel_id, 3, type: :string, json_name: "sourceChannelId", deprecated: false
  field :signer, 4, type: :string
  field :relayers, 5, repeated: true, type: :string
end

defmodule Ibc.Applications.Fee.V1.MsgPayPacketFeeResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Applications.Fee.V1.MsgPayPacketFeeAsync do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet_id, 1,
    type: Ibc.Core.Channel.V1.PacketId,
    json_name: "packetId",
    deprecated: false

  field :packet_fee, 2,
    type: Ibc.Applications.Fee.V1.PacketFee,
    json_name: "packetFee",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.MsgPayPacketFeeAsyncResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Applications.Fee.V1.Msg.Service do
  @moduledoc false
  use GRPC.Service, name: "ibc.applications.fee.v1.Msg", protoc_gen_elixir_version: "0.11.0"

  rpc :RegisterPayee,
      Ibc.Applications.Fee.V1.MsgRegisterPayee,
      Ibc.Applications.Fee.V1.MsgRegisterPayeeResponse

  rpc :RegisterCounterpartyPayee,
      Ibc.Applications.Fee.V1.MsgRegisterCounterpartyPayee,
      Ibc.Applications.Fee.V1.MsgRegisterCounterpartyPayeeResponse

  rpc :PayPacketFee,
      Ibc.Applications.Fee.V1.MsgPayPacketFee,
      Ibc.Applications.Fee.V1.MsgPayPacketFeeResponse

  rpc :PayPacketFeeAsync,
      Ibc.Applications.Fee.V1.MsgPayPacketFeeAsync,
      Ibc.Applications.Fee.V1.MsgPayPacketFeeAsyncResponse
end

defmodule Ibc.Applications.Fee.V1.Msg.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Applications.Fee.V1.Msg.Service
end