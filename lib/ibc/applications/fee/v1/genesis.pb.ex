defmodule Ibc.Applications.Fee.V1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :identified_fees, 1,
    repeated: true,
    type: Ibc.Applications.Fee.V1.IdentifiedPacketFees,
    json_name: "identifiedFees",
    deprecated: false

  field :fee_enabled_channels, 2,
    repeated: true,
    type: Ibc.Applications.Fee.V1.FeeEnabledChannel,
    json_name: "feeEnabledChannels",
    deprecated: false

  field :registered_payees, 3,
    repeated: true,
    type: Ibc.Applications.Fee.V1.RegisteredPayee,
    json_name: "registeredPayees",
    deprecated: false

  field :registered_counterparty_payees, 4,
    repeated: true,
    type: Ibc.Applications.Fee.V1.RegisteredCounterpartyPayee,
    json_name: "registeredCounterpartyPayees",
    deprecated: false

  field :forward_relayers, 5,
    repeated: true,
    type: Ibc.Applications.Fee.V1.ForwardRelayerAddress,
    json_name: "forwardRelayers",
    deprecated: false
end

defmodule Ibc.Applications.Fee.V1.FeeEnabledChannel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 2, type: :string, json_name: "channelId", deprecated: false
end

defmodule Ibc.Applications.Fee.V1.RegisteredPayee do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_id, 1, type: :string, json_name: "channelId", deprecated: false
  field :relayer, 2, type: :string
  field :payee, 3, type: :string
end

defmodule Ibc.Applications.Fee.V1.RegisteredCounterpartyPayee do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel_id, 1, type: :string, json_name: "channelId", deprecated: false
  field :relayer, 2, type: :string
  field :counterparty_payee, 3, type: :string, json_name: "counterpartyPayee", deprecated: false
end

defmodule Ibc.Applications.Fee.V1.ForwardRelayerAddress do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :address, 1, type: :string

  field :packet_id, 2,
    type: Ibc.Core.Channel.V1.PacketId,
    json_name: "packetId",
    deprecated: false
end