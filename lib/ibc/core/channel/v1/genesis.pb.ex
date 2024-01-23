defmodule Ibc.Core.Channel.V1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channels, 1,
    repeated: true,
    type: Ibc.Core.Channel.V1.IdentifiedChannel,
    deprecated: false

  field :acknowledgements, 2,
    repeated: true,
    type: Ibc.Core.Channel.V1.PacketState,
    deprecated: false

  field :commitments, 3, repeated: true, type: Ibc.Core.Channel.V1.PacketState, deprecated: false
  field :receipts, 4, repeated: true, type: Ibc.Core.Channel.V1.PacketState, deprecated: false

  field :send_sequences, 5,
    repeated: true,
    type: Ibc.Core.Channel.V1.PacketSequence,
    json_name: "sendSequences",
    deprecated: false

  field :recv_sequences, 6,
    repeated: true,
    type: Ibc.Core.Channel.V1.PacketSequence,
    json_name: "recvSequences",
    deprecated: false

  field :ack_sequences, 7,
    repeated: true,
    type: Ibc.Core.Channel.V1.PacketSequence,
    json_name: "ackSequences",
    deprecated: false

  field :next_channel_sequence, 8,
    type: :uint64,
    json_name: "nextChannelSequence",
    deprecated: false
end

defmodule Ibc.Core.Channel.V1.PacketSequence do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
  field :sequence, 3, type: :uint64
end