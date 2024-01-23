defmodule Ibc.Applications.Fee.V1.IncentivizedAcknowledgement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :app_acknowledgement, 1, type: :bytes, json_name: "appAcknowledgement", deprecated: false

  field :forward_relayer_address, 2,
    type: :string,
    json_name: "forwardRelayerAddress",
    deprecated: false

  field :underlying_app_success, 3,
    type: :bool,
    json_name: "underlyingAppSuccess",
    deprecated: false
end