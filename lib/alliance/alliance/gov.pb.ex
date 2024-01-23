defmodule Alliance.Alliance.MsgCreateAllianceProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :denom, 3, type: :string, deprecated: false
  field :reward_weight, 4, type: :string, json_name: "rewardWeight", deprecated: false
  field :take_rate, 5, type: :string, json_name: "takeRate", deprecated: false
  field :reward_change_rate, 6, type: :string, json_name: "rewardChangeRate", deprecated: false

  field :reward_change_interval, 7,
    type: Google.Protobuf.Duration,
    json_name: "rewardChangeInterval",
    deprecated: false

  field :reward_weight_range, 8,
    type: Alliance.Alliance.RewardWeightRange,
    json_name: "rewardWeightRange",
    deprecated: false
end

defmodule Alliance.Alliance.MsgUpdateAllianceProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :denom, 3, type: :string, deprecated: false
  field :reward_weight, 4, type: :string, json_name: "rewardWeight", deprecated: false
  field :take_rate, 5, type: :string, json_name: "takeRate", deprecated: false
  field :reward_change_rate, 6, type: :string, json_name: "rewardChangeRate", deprecated: false

  field :reward_change_interval, 7,
    type: Google.Protobuf.Duration,
    json_name: "rewardChangeInterval",
    deprecated: false
end

defmodule Alliance.Alliance.MsgDeleteAllianceProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :denom, 3, type: :string, deprecated: false
end