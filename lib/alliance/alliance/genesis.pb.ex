defmodule Alliance.Alliance.ValidatorInfoState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_address, 1, type: :string, json_name: "validatorAddress"
  field :validator, 2, type: Alliance.Alliance.AllianceValidatorInfo, deprecated: false
end

defmodule Alliance.Alliance.RedelegationState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :completion_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "completionTime",
    deprecated: false

  field :redelegation, 2, type: Alliance.Alliance.Redelegation, deprecated: false
end

defmodule Alliance.Alliance.UndelegationState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :completion_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "completionTime",
    deprecated: false

  field :undelegation, 2, type: Alliance.Alliance.QueuedUndelegation, deprecated: false
end

defmodule Alliance.Alliance.RewardWeightChangeSnapshotState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :height, 1, type: :uint64
  field :validator, 2, type: :string
  field :denom, 3, type: :string
  field :snapshot, 4, type: Alliance.Alliance.RewardWeightChangeSnapshot, deprecated: false
end

defmodule Alliance.Alliance.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Alliance.Alliance.Params, deprecated: false
  field :assets, 2, repeated: true, type: Alliance.Alliance.AllianceAsset, deprecated: false

  field :validator_infos, 3,
    repeated: true,
    type: Alliance.Alliance.ValidatorInfoState,
    json_name: "validatorInfos",
    deprecated: false

  field :reward_weight_change_snaphots, 4,
    repeated: true,
    type: Alliance.Alliance.RewardWeightChangeSnapshotState,
    json_name: "rewardWeightChangeSnaphots",
    deprecated: false

  field :delegations, 5, repeated: true, type: Alliance.Alliance.Delegation, deprecated: false

  field :redelegations, 6,
    repeated: true,
    type: Alliance.Alliance.RedelegationState,
    deprecated: false

  field :undelegations, 7,
    repeated: true,
    type: Alliance.Alliance.UndelegationState,
    deprecated: false
end