defmodule Ibc.Core.Channel.V1.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNINITIALIZED_UNSPECIFIED, 0
  field :STATE_INIT, 1
  field :STATE_TRYOPEN, 2
  field :STATE_OPEN, 3
  field :STATE_CLOSED, 4
end

defmodule Ibc.Core.Channel.V1.Order do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ORDER_NONE_UNSPECIFIED, 0
  field :ORDER_UNORDERED, 1
  field :ORDER_ORDERED, 2
end

defmodule Ibc.Core.Channel.V1.Channel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1, type: Ibc.Core.Channel.V1.State, enum: true
  field :ordering, 2, type: Ibc.Core.Channel.V1.Order, enum: true
  field :counterparty, 3, type: Ibc.Core.Channel.V1.Counterparty, deprecated: false

  field :connection_hops, 4,
    repeated: true,
    type: :string,
    json_name: "connectionHops",
    deprecated: false

  field :version, 5, type: :string
end

defmodule Ibc.Core.Channel.V1.IdentifiedChannel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1, type: Ibc.Core.Channel.V1.State, enum: true
  field :ordering, 2, type: Ibc.Core.Channel.V1.Order, enum: true
  field :counterparty, 3, type: Ibc.Core.Channel.V1.Counterparty, deprecated: false

  field :connection_hops, 4,
    repeated: true,
    type: :string,
    json_name: "connectionHops",
    deprecated: false

  field :version, 5, type: :string
  field :port_id, 6, type: :string, json_name: "portId"
  field :channel_id, 7, type: :string, json_name: "channelId"
end

defmodule Ibc.Core.Channel.V1.Counterparty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
end

defmodule Ibc.Core.Channel.V1.Packet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequence, 1, type: :uint64
  field :source_port, 2, type: :string, json_name: "sourcePort", deprecated: false
  field :source_channel, 3, type: :string, json_name: "sourceChannel", deprecated: false
  field :destination_port, 4, type: :string, json_name: "destinationPort", deprecated: false
  field :destination_channel, 5, type: :string, json_name: "destinationChannel", deprecated: false
  field :data, 6, type: :bytes

  field :timeout_height, 7,
    type: Ibc.Core.Client.V1.Height,
    json_name: "timeoutHeight",
    deprecated: false

  field :timeout_timestamp, 8, type: :uint64, json_name: "timeoutTimestamp", deprecated: false
end

defmodule Ibc.Core.Channel.V1.PacketState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
  field :sequence, 3, type: :uint64
  field :data, 4, type: :bytes
end

defmodule Ibc.Core.Channel.V1.PacketId do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
  field :sequence, 3, type: :uint64
end

defmodule Ibc.Core.Channel.V1.Acknowledgement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :response, 0

  field :result, 21, type: :bytes, oneof: 0
  field :error, 22, type: :string, oneof: 0
end