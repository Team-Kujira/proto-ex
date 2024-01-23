defmodule Ibc.Core.Channel.V1.ResponseResultType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :RESPONSE_RESULT_TYPE_UNSPECIFIED, 0
  field :RESPONSE_RESULT_TYPE_NOOP, 1
  field :RESPONSE_RESULT_TYPE_SUCCESS, 2
end

defmodule Ibc.Core.Channel.V1.MsgChannelOpenInit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel, 2, type: Ibc.Core.Channel.V1.Channel, deprecated: false
  field :signer, 3, type: :string
end

defmodule Ibc.Core.Channel.V1.MsgChannelOpenInitResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_id, 1, type: :string, json_name: "channelId", deprecated: false
  field :version, 2, type: :string
end

defmodule Ibc.Core.Channel.V1.MsgChannelOpenTry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :previous_channel_id, 2, type: :string, json_name: "previousChannelId", deprecated: true
  field :channel, 3, type: Ibc.Core.Channel.V1.Channel, deprecated: false

  field :counterparty_version, 4,
    type: :string,
    json_name: "counterpartyVersion",
    deprecated: false

  field :proof_init, 5, type: :bytes, json_name: "proofInit", deprecated: false

  field :proof_height, 6,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false

  field :signer, 7, type: :string
end

defmodule Ibc.Core.Channel.V1.MsgChannelOpenTryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
end

defmodule Ibc.Core.Channel.V1.MsgChannelOpenAck do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false

  field :counterparty_channel_id, 3,
    type: :string,
    json_name: "counterpartyChannelId",
    deprecated: false

  field :counterparty_version, 4,
    type: :string,
    json_name: "counterpartyVersion",
    deprecated: false

  field :proof_try, 5, type: :bytes, json_name: "proofTry", deprecated: false

  field :proof_height, 6,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false

  field :signer, 7, type: :string
end

defmodule Ibc.Core.Channel.V1.MsgChannelOpenAckResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Channel.V1.MsgChannelOpenConfirm do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
  field :proof_ack, 3, type: :bytes, json_name: "proofAck", deprecated: false

  field :proof_height, 4,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false

  field :signer, 5, type: :string
end

defmodule Ibc.Core.Channel.V1.MsgChannelOpenConfirmResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Channel.V1.MsgChannelCloseInit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
  field :signer, 3, type: :string
end

defmodule Ibc.Core.Channel.V1.MsgChannelCloseInitResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Channel.V1.MsgChannelCloseConfirm do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
  field :proof_init, 3, type: :bytes, json_name: "proofInit", deprecated: false

  field :proof_height, 4,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false

  field :signer, 5, type: :string
end

defmodule Ibc.Core.Channel.V1.MsgChannelCloseConfirmResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Channel.V1.MsgRecvPacket do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet, 1, type: Ibc.Core.Channel.V1.Packet, deprecated: false
  field :proof_commitment, 2, type: :bytes, json_name: "proofCommitment", deprecated: false

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false

  field :signer, 4, type: :string
end

defmodule Ibc.Core.Channel.V1.MsgRecvPacketResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1, type: Ibc.Core.Channel.V1.ResponseResultType, enum: true
end

defmodule Ibc.Core.Channel.V1.MsgTimeout do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet, 1, type: Ibc.Core.Channel.V1.Packet, deprecated: false
  field :proof_unreceived, 2, type: :bytes, json_name: "proofUnreceived", deprecated: false

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false

  field :next_sequence_recv, 4, type: :uint64, json_name: "nextSequenceRecv", deprecated: false
  field :signer, 5, type: :string
end

defmodule Ibc.Core.Channel.V1.MsgTimeoutResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1, type: Ibc.Core.Channel.V1.ResponseResultType, enum: true
end

defmodule Ibc.Core.Channel.V1.MsgTimeoutOnClose do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet, 1, type: Ibc.Core.Channel.V1.Packet, deprecated: false
  field :proof_unreceived, 2, type: :bytes, json_name: "proofUnreceived", deprecated: false
  field :proof_close, 3, type: :bytes, json_name: "proofClose", deprecated: false

  field :proof_height, 4,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false

  field :next_sequence_recv, 5, type: :uint64, json_name: "nextSequenceRecv", deprecated: false
  field :signer, 6, type: :string
end

defmodule Ibc.Core.Channel.V1.MsgTimeoutOnCloseResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1, type: Ibc.Core.Channel.V1.ResponseResultType, enum: true
end

defmodule Ibc.Core.Channel.V1.MsgAcknowledgement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet, 1, type: Ibc.Core.Channel.V1.Packet, deprecated: false
  field :acknowledgement, 2, type: :bytes
  field :proof_acked, 3, type: :bytes, json_name: "proofAcked", deprecated: false

  field :proof_height, 4,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false

  field :signer, 5, type: :string
end

defmodule Ibc.Core.Channel.V1.MsgAcknowledgementResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1, type: Ibc.Core.Channel.V1.ResponseResultType, enum: true
end

defmodule Ibc.Core.Channel.V1.Msg.Service do
  @moduledoc false
  use GRPC.Service, name: "ibc.core.channel.v1.Msg", protoc_gen_elixir_version: "0.11.0"

  rpc :ChannelOpenInit,
      Ibc.Core.Channel.V1.MsgChannelOpenInit,
      Ibc.Core.Channel.V1.MsgChannelOpenInitResponse

  rpc :ChannelOpenTry,
      Ibc.Core.Channel.V1.MsgChannelOpenTry,
      Ibc.Core.Channel.V1.MsgChannelOpenTryResponse

  rpc :ChannelOpenAck,
      Ibc.Core.Channel.V1.MsgChannelOpenAck,
      Ibc.Core.Channel.V1.MsgChannelOpenAckResponse

  rpc :ChannelOpenConfirm,
      Ibc.Core.Channel.V1.MsgChannelOpenConfirm,
      Ibc.Core.Channel.V1.MsgChannelOpenConfirmResponse

  rpc :ChannelCloseInit,
      Ibc.Core.Channel.V1.MsgChannelCloseInit,
      Ibc.Core.Channel.V1.MsgChannelCloseInitResponse

  rpc :ChannelCloseConfirm,
      Ibc.Core.Channel.V1.MsgChannelCloseConfirm,
      Ibc.Core.Channel.V1.MsgChannelCloseConfirmResponse

  rpc :RecvPacket, Ibc.Core.Channel.V1.MsgRecvPacket, Ibc.Core.Channel.V1.MsgRecvPacketResponse

  rpc :Timeout, Ibc.Core.Channel.V1.MsgTimeout, Ibc.Core.Channel.V1.MsgTimeoutResponse

  rpc :TimeoutOnClose,
      Ibc.Core.Channel.V1.MsgTimeoutOnClose,
      Ibc.Core.Channel.V1.MsgTimeoutOnCloseResponse

  rpc :Acknowledgement,
      Ibc.Core.Channel.V1.MsgAcknowledgement,
      Ibc.Core.Channel.V1.MsgAcknowledgementResponse
end

defmodule Ibc.Core.Channel.V1.Msg.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Core.Channel.V1.Msg.Service
end