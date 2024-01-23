defmodule Ibc.Applications.Fee.V1.QueryIncentivizedPacketsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pagination, 1, type: Cosmos.Base.Query.V1beta1.PageRequest
  field :query_height, 2, type: :uint64, json_name: "queryHeight"
end

defmodule Ibc.Applications.Fee.V1.QueryIncentivizedPacketsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :incentivized_packets, 1,
    repeated: true,
    type: Ibc.Applications.Fee.V1.IdentifiedPacketFees,
    json_name: "incentivizedPackets",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.QueryIncentivizedPacketRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet_id, 1,
    type: Ibc.Core.Channel.V1.PacketId,
    json_name: "packetId",
    deprecated: false

  field :query_height, 2, type: :uint64, json_name: "queryHeight"
end

defmodule Ibc.Applications.Fee.V1.QueryIncentivizedPacketResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :incentivized_packet, 1,
    type: Ibc.Applications.Fee.V1.IdentifiedPacketFees,
    json_name: "incentivizedPacket",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.QueryIncentivizedPacketsForChannelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pagination, 1, type: Cosmos.Base.Query.V1beta1.PageRequest
  field :port_id, 2, type: :string, json_name: "portId"
  field :channel_id, 3, type: :string, json_name: "channelId"
  field :query_height, 4, type: :uint64, json_name: "queryHeight"
end

defmodule Ibc.Applications.Fee.V1.QueryIncentivizedPacketsForChannelResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :incentivized_packets, 1,
    repeated: true,
    type: Ibc.Applications.Fee.V1.IdentifiedPacketFees,
    json_name: "incentivizedPackets"
end

defmodule Ibc.Applications.Fee.V1.QueryTotalRecvFeesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet_id, 1,
    type: Ibc.Core.Channel.V1.PacketId,
    json_name: "packetId",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.QueryTotalRecvFeesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :recv_fees, 1,
    repeated: true,
    type: Cosmos.Base.V1beta1.Coin,
    json_name: "recvFees",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.QueryTotalAckFeesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet_id, 1,
    type: Ibc.Core.Channel.V1.PacketId,
    json_name: "packetId",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.QueryTotalAckFeesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ack_fees, 1,
    repeated: true,
    type: Cosmos.Base.V1beta1.Coin,
    json_name: "ackFees",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.QueryTotalTimeoutFeesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet_id, 1,
    type: Ibc.Core.Channel.V1.PacketId,
    json_name: "packetId",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.QueryTotalTimeoutFeesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :timeout_fees, 1,
    repeated: true,
    type: Cosmos.Base.V1beta1.Coin,
    json_name: "timeoutFees",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.QueryPayeeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_id, 1, type: :string, json_name: "channelId", deprecated: false
  field :relayer, 2, type: :string
end

defmodule Ibc.Applications.Fee.V1.QueryPayeeResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :payee_address, 1, type: :string, json_name: "payeeAddress", deprecated: false
end

defmodule Ibc.Applications.Fee.V1.QueryCounterpartyPayeeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_id, 1, type: :string, json_name: "channelId", deprecated: false
  field :relayer, 2, type: :string
end

defmodule Ibc.Applications.Fee.V1.QueryCounterpartyPayeeResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :counterparty_payee, 1, type: :string, json_name: "counterpartyPayee", deprecated: false
end

defmodule Ibc.Applications.Fee.V1.QueryFeeEnabledChannelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pagination, 1, type: Cosmos.Base.Query.V1beta1.PageRequest
  field :query_height, 2, type: :uint64, json_name: "queryHeight"
end

defmodule Ibc.Applications.Fee.V1.QueryFeeEnabledChannelsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fee_enabled_channels, 1,
    repeated: true,
    type: Ibc.Applications.Fee.V1.FeeEnabledChannel,
    json_name: "feeEnabledChannels",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.QueryFeeEnabledChannelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
end

defmodule Ibc.Applications.Fee.V1.QueryFeeEnabledChannelResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fee_enabled, 1, type: :bool, json_name: "feeEnabled", deprecated: false
end

defmodule Ibc.Applications.Fee.V1.Query.Service do
  @moduledoc false
  use GRPC.Service, name: "ibc.applications.fee.v1.Query", protoc_gen_elixir_version: "0.11.0"

  rpc :IncentivizedPackets,
      Ibc.Applications.Fee.V1.QueryIncentivizedPacketsRequest,
      Ibc.Applications.Fee.V1.QueryIncentivizedPacketsResponse

  rpc :IncentivizedPacket,
      Ibc.Applications.Fee.V1.QueryIncentivizedPacketRequest,
      Ibc.Applications.Fee.V1.QueryIncentivizedPacketResponse

  rpc :IncentivizedPacketsForChannel,
      Ibc.Applications.Fee.V1.QueryIncentivizedPacketsForChannelRequest,
      Ibc.Applications.Fee.V1.QueryIncentivizedPacketsForChannelResponse

  rpc :TotalRecvFees,
      Ibc.Applications.Fee.V1.QueryTotalRecvFeesRequest,
      Ibc.Applications.Fee.V1.QueryTotalRecvFeesResponse

  rpc :TotalAckFees,
      Ibc.Applications.Fee.V1.QueryTotalAckFeesRequest,
      Ibc.Applications.Fee.V1.QueryTotalAckFeesResponse

  rpc :TotalTimeoutFees,
      Ibc.Applications.Fee.V1.QueryTotalTimeoutFeesRequest,
      Ibc.Applications.Fee.V1.QueryTotalTimeoutFeesResponse

  rpc :Payee,
      Ibc.Applications.Fee.V1.QueryPayeeRequest,
      Ibc.Applications.Fee.V1.QueryPayeeResponse

  rpc :CounterpartyPayee,
      Ibc.Applications.Fee.V1.QueryCounterpartyPayeeRequest,
      Ibc.Applications.Fee.V1.QueryCounterpartyPayeeResponse

  rpc :FeeEnabledChannels,
      Ibc.Applications.Fee.V1.QueryFeeEnabledChannelsRequest,
      Ibc.Applications.Fee.V1.QueryFeeEnabledChannelsResponse

  rpc :FeeEnabledChannel,
      Ibc.Applications.Fee.V1.QueryFeeEnabledChannelRequest,
      Ibc.Applications.Fee.V1.QueryFeeEnabledChannelResponse
end

defmodule Ibc.Applications.Fee.V1.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Applications.Fee.V1.Query.Service
end