defmodule Alliance.Alliance.RewardWeightRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :min, 1, type: :string, deprecated: false
  field :max, 2, type: :string, deprecated: false
end

defmodule Alliance.Alliance.AllianceAsset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom, 1, type: :string, deprecated: false
  field :reward_weight, 2, type: :string, json_name: "rewardWeight", deprecated: false
  field :take_rate, 3, type: :string, json_name: "takeRate", deprecated: false
  field :total_tokens, 4, type: :string, json_name: "totalTokens", deprecated: false

  field :total_validator_shares, 5,
    type: :string,
    json_name: "totalValidatorShares",
    deprecated: false

  field :reward_start_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "rewardStartTime",
    deprecated: false

  field :reward_change_rate, 7, type: :string, json_name: "rewardChangeRate", deprecated: false

  field :reward_change_interval, 8,
    type: Google.Protobuf.Duration,
    json_name: "rewardChangeInterval",
    deprecated: false

  field :last_reward_change_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "lastRewardChangeTime",
    deprecated: false

  field :reward_weight_range, 10,
    type: Alliance.Alliance.RewardWeightRange,
    json_name: "rewardWeightRange",
    deprecated: false

  field :is_initialized, 11, type: :bool, json_name: "isInitialized"
end

defmodule Alliance.Alliance.RewardWeightChangeSnapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :prev_reward_weight, 1, type: :string, json_name: "prevRewardWeight", deprecated: false

  field :reward_histories, 2,
    repeated: true,
    type: Alliance.Alliance.RewardHistory,
    json_name: "rewardHistories",
    deprecated: false
end