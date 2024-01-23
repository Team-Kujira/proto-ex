defmodule Ibc.Applications.Fee.V1.Fee do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :recv_fee, 1,
    repeated: true,
    type: Cosmos.Base.V1beta1.Coin,
    json_name: "recvFee",
    deprecated: false

  field :ack_fee, 2,
    repeated: true,
    type: Cosmos.Base.V1beta1.Coin,
    json_name: "ackFee",
    deprecated: false

  field :timeout_fee, 3,
    repeated: true,
    type: Cosmos.Base.V1beta1.Coin,
    json_name: "timeoutFee",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.PacketFee do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fee, 1, type: Ibc.Applications.Fee.V1.Fee, deprecated: false
  field :refund_address, 2, type: :string, json_name: "refundAddress", deprecated: false
  field :relayers, 3, repeated: true, type: :string
end

defmodule Ibc.Applications.Fee.V1.PacketFees do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet_fees, 1,
    repeated: true,
    type: Ibc.Applications.Fee.V1.PacketFee,
    json_name: "packetFees",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.IdentifiedPacketFees do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :packet_id, 1,
    type: Ibc.Core.Channel.V1.PacketId,
    json_name: "packetId",
    deprecated: false

  field :packet_fees, 2,
    repeated: true,
    type: Ibc.Applications.Fee.V1.PacketFee,
    json_name: "packetFees",
    deprecated: false
end