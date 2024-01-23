defmodule Alliance.Alliance.Delegation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_address, 1, type: :string, json_name: "delegatorAddress", deprecated: false
  field :validator_address, 2, type: :string, json_name: "validatorAddress", deprecated: false
  field :denom, 3, type: :string
  field :shares, 4, type: :string, deprecated: false

  field :reward_history, 5,
    repeated: true,
    type: Alliance.Alliance.RewardHistory,
    json_name: "rewardHistory",
    deprecated: false

  field :last_reward_claim_height, 6, type: :uint64, json_name: "lastRewardClaimHeight"
end

defmodule Alliance.Alliance.Undelegation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_address, 1, type: :string, json_name: "delegatorAddress", deprecated: false
  field :validator_address, 2, type: :string, json_name: "validatorAddress", deprecated: false
  field :balance, 3, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end

defmodule Alliance.Alliance.QueuedUndelegation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entries, 1, repeated: true, type: Alliance.Alliance.Undelegation
end

defmodule Alliance.Alliance.AllianceValidatorInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :global_reward_history, 1,
    repeated: true,
    type: Alliance.Alliance.RewardHistory,
    json_name: "globalRewardHistory",
    deprecated: false

  field :total_delegator_shares, 2,
    repeated: true,
    type: Cosmos.Base.V1beta1.DecCoin,
    json_name: "totalDelegatorShares",
    deprecated: false

  field :validator_shares, 3,
    repeated: true,
    type: Cosmos.Base.V1beta1.DecCoin,
    json_name: "validatorShares",
    deprecated: false
end