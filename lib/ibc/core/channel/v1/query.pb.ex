defmodule Ibc.Core.Channel.V1.QueryChannelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId"
  field :channel_id, 2, type: :string, json_name: "channelId"
end

defmodule Ibc.Core.Channel.V1.QueryChannelResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel, 1, type: Ibc.Core.Channel.V1.Channel
  field :proof, 2, type: :bytes

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Channel.V1.QueryChannelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pagination, 1, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Ibc.Core.Channel.V1.QueryChannelsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channels, 1, repeated: true, type: Ibc.Core.Channel.V1.IdentifiedChannel
  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
  field :height, 3, type: Ibc.Core.Client.V1.Height, deprecated: false
end

defmodule Ibc.Core.Channel.V1.QueryConnectionChannelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection, 1, type: :string
  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Ibc.Core.Channel.V1.QueryConnectionChannelsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channels, 1, repeated: true, type: Ibc.Core.Channel.V1.IdentifiedChannel
  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
  field :height, 3, type: Ibc.Core.Client.V1.Height, deprecated: false
end

defmodule Ibc.Core.Channel.V1.QueryChannelClientStateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId"
  field :channel_id, 2, type: :string, json_name: "channelId"
end

defmodule Ibc.Core.Channel.V1.QueryChannelClientStateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :identified_client_state, 1,
    type: Ibc.Core.Client.V1.IdentifiedClientState,
    json_name: "identifiedClientState"

  field :proof, 2, type: :bytes

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Channel.V1.QueryChannelConsensusStateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId"
  field :channel_id, 2, type: :string, json_name: "channelId"
  field :revision_number, 3, type: :uint64, json_name: "revisionNumber"
  field :revision_height, 4, type: :uint64, json_name: "revisionHeight"
end

defmodule Ibc.Core.Channel.V1.QueryChannelConsensusStateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :consensus_state, 1, type: Google.Protobuf.Any, json_name: "consensusState"
  field :client_id, 2, type: :string, json_name: "clientId"
  field :proof, 3, type: :bytes

  field :proof_height, 4,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Channel.V1.QueryPacketCommitmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId"
  field :channel_id, 2, type: :string, json_name: "channelId"
  field :sequence, 3, type: :uint64
end

defmodule Ibc.Core.Channel.V1.QueryPacketCommitmentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :commitment, 1, type: :bytes
  field :proof, 2, type: :bytes

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Channel.V1.QueryPacketCommitmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId"
  field :channel_id, 2, type: :string, json_name: "channelId"
  field :pagination, 3, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Ibc.Core.Channel.V1.QueryPacketCommitmentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :commitments, 1, repeated: true, type: Ibc.Core.Channel.V1.PacketState
  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
  field :height, 3, type: Ibc.Core.Client.V1.Height, deprecated: false
end

defmodule Ibc.Core.Channel.V1.QueryPacketReceiptRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId"
  field :channel_id, 2, type: :string, json_name: "channelId"
  field :sequence, 3, type: :uint64
end

defmodule Ibc.Core.Channel.V1.QueryPacketReceiptResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :received, 2, type: :bool
  field :proof, 3, type: :bytes

  field :proof_height, 4,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Channel.V1.QueryPacketAcknowledgementRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId"
  field :channel_id, 2, type: :string, json_name: "channelId"
  field :sequence, 3, type: :uint64
end

defmodule Ibc.Core.Channel.V1.QueryPacketAcknowledgementResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :acknowledgement, 1, type: :bytes
  field :proof, 2, type: :bytes

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Channel.V1.QueryPacketAcknowledgementsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId"
  field :channel_id, 2, type: :string, json_name: "channelId"
  field :pagination, 3, type: Cosmos.Base.Query.V1beta1.PageRequest

  field :packet_commitment_sequences, 4,
    repeated: true,
    type: :uint64,
    json_name: "packetCommitmentSequences"
end

defmodule Ibc.Core.Channel.V1.QueryPacketAcknowledgementsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :acknowledgements, 1, repeated: true, type: Ibc.Core.Channel.V1.PacketState
  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
  field :height, 3, type: Ibc.Core.Client.V1.Height, deprecated: false
end

defmodule Ibc.Core.Channel.V1.QueryUnreceivedPacketsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId"
  field :channel_id, 2, type: :string, json_name: "channelId"

  field :packet_commitment_sequences, 3,
    repeated: true,
    type: :uint64,
    json_name: "packetCommitmentSequences"
end

defmodule Ibc.Core.Channel.V1.QueryUnreceivedPacketsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequences, 1, repeated: true, type: :uint64
  field :height, 2, type: Ibc.Core.Client.V1.Height, deprecated: false
end

defmodule Ibc.Core.Channel.V1.QueryUnreceivedAcksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId"
  field :channel_id, 2, type: :string, json_name: "channelId"
  field :packet_ack_sequences, 3, repeated: true, type: :uint64, json_name: "packetAckSequences"
end

defmodule Ibc.Core.Channel.V1.QueryUnreceivedAcksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequences, 1, repeated: true, type: :uint64
  field :height, 2, type: Ibc.Core.Client.V1.Height, deprecated: false
end

defmodule Ibc.Core.Channel.V1.QueryNextSequenceReceiveRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId"
  field :channel_id, 2, type: :string, json_name: "channelId"
end

defmodule Ibc.Core.Channel.V1.QueryNextSequenceReceiveResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :next_sequence_receive, 1, type: :uint64, json_name: "nextSequenceReceive"
  field :proof, 2, type: :bytes

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Channel.V1.Query.Service do
  @moduledoc false
  use GRPC.Service, name: "ibc.core.channel.v1.Query", protoc_gen_elixir_version: "0.11.0"

  rpc :Channel, Ibc.Core.Channel.V1.QueryChannelRequest, Ibc.Core.Channel.V1.QueryChannelResponse

  rpc :Channels,
      Ibc.Core.Channel.V1.QueryChannelsRequest,
      Ibc.Core.Channel.V1.QueryChannelsResponse

  rpc :ConnectionChannels,
      Ibc.Core.Channel.V1.QueryConnectionChannelsRequest,
      Ibc.Core.Channel.V1.QueryConnectionChannelsResponse

  rpc :ChannelClientState,
      Ibc.Core.Channel.V1.QueryChannelClientStateRequest,
      Ibc.Core.Channel.V1.QueryChannelClientStateResponse

  rpc :ChannelConsensusState,
      Ibc.Core.Channel.V1.QueryChannelConsensusStateRequest,
      Ibc.Core.Channel.V1.QueryChannelConsensusStateResponse

  rpc :PacketCommitment,
      Ibc.Core.Channel.V1.QueryPacketCommitmentRequest,
      Ibc.Core.Channel.V1.QueryPacketCommitmentResponse

  rpc :PacketCommitments,
      Ibc.Core.Channel.V1.QueryPacketCommitmentsRequest,
      Ibc.Core.Channel.V1.QueryPacketCommitmentsResponse

  rpc :PacketReceipt,
      Ibc.Core.Channel.V1.QueryPacketReceiptRequest,
      Ibc.Core.Channel.V1.QueryPacketReceiptResponse

  rpc :PacketAcknowledgement,
      Ibc.Core.Channel.V1.QueryPacketAcknowledgementRequest,
      Ibc.Core.Channel.V1.QueryPacketAcknowledgementResponse

  rpc :PacketAcknowledgements,
      Ibc.Core.Channel.V1.QueryPacketAcknowledgementsRequest,
      Ibc.Core.Channel.V1.QueryPacketAcknowledgementsResponse

  rpc :UnreceivedPackets,
      Ibc.Core.Channel.V1.QueryUnreceivedPacketsRequest,
      Ibc.Core.Channel.V1.QueryUnreceivedPacketsResponse

  rpc :UnreceivedAcks,
      Ibc.Core.Channel.V1.QueryUnreceivedAcksRequest,
      Ibc.Core.Channel.V1.QueryUnreceivedAcksResponse

  rpc :NextSequenceReceive,
      Ibc.Core.Channel.V1.QueryNextSequenceReceiveRequest,
      Ibc.Core.Channel.V1.QueryNextSequenceReceiveResponse
end

defmodule Ibc.Core.Channel.V1.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Core.Channel.V1.Query.Service
end