defmodule Alliance.Alliance.QueuedRedelegation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entries, 1, repeated: true, type: Alliance.Alliance.Redelegation
end

defmodule Alliance.Alliance.Redelegation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_address, 1, type: :string, json_name: "delegatorAddress", deprecated: false

  field :src_validator_address, 2,
    type: :string,
    json_name: "srcValidatorAddress",
    deprecated: false

  field :dst_validator_address, 3,
    type: :string,
    json_name: "dstValidatorAddress",
    deprecated: false

  field :balance, 4, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end

defmodule Alliance.Alliance.RedelegationEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_address, 1, type: :string, json_name: "delegatorAddress", deprecated: false

  field :src_validator_address, 2,
    type: :string,
    json_name: "srcValidatorAddress",
    deprecated: false

  field :dst_validator_address, 3,
    type: :string,
    json_name: "dstValidatorAddress",
    deprecated: false

  field :balance, 4, type: Cosmos.Base.V1beta1.Coin, deprecated: false

  field :completion_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "completionTime",
    deprecated: false
end