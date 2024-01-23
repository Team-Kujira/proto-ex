defmodule Alliance.Alliance.UnbondingDelegation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :completion_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "completionTime",
    deprecated: false

  field :validator_address, 2, type: :string, json_name: "validatorAddress", deprecated: false
  field :amount, 3, type: :string, deprecated: false
end