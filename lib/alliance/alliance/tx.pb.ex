defmodule Alliance.Alliance.MsgDelegate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_address, 1, type: :string, json_name: "delegatorAddress", deprecated: false
  field :validator_address, 2, type: :string, json_name: "validatorAddress", deprecated: false
  field :amount, 3, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end

defmodule Alliance.Alliance.MsgDelegateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Alliance.Alliance.MsgUndelegate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_address, 1, type: :string, json_name: "delegatorAddress", deprecated: false
  field :validator_address, 2, type: :string, json_name: "validatorAddress", deprecated: false
  field :amount, 3, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end

defmodule Alliance.Alliance.MsgUndelegateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Alliance.Alliance.MsgRedelegate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_address, 1, type: :string, json_name: "delegatorAddress", deprecated: false

  field :validator_src_address, 2,
    type: :string,
    json_name: "validatorSrcAddress",
    deprecated: false

  field :validator_dst_address, 3,
    type: :string,
    json_name: "validatorDstAddress",
    deprecated: false

  field :amount, 4, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end

defmodule Alliance.Alliance.MsgRedelegateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Alliance.Alliance.MsgClaimDelegationRewards do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_address, 1, type: :string, json_name: "delegatorAddress", deprecated: false
  field :validator_address, 2, type: :string, json_name: "validatorAddress", deprecated: false
  field :denom, 3, type: :string
end

defmodule Alliance.Alliance.MsgClaimDelegationRewardsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Alliance.Alliance.MsgUpdateParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :authority, 1, type: :string, deprecated: false
  field :params, 2, type: Alliance.Alliance.Params, deprecated: false
end

defmodule Alliance.Alliance.MsgUpdateParamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Alliance.Alliance.MsgCreateAlliance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :authority, 1, type: :string, deprecated: false
  field :denom, 2, type: :string, deprecated: false
  field :reward_weight, 3, type: :string, json_name: "rewardWeight", deprecated: false
  field :take_rate, 4, type: :string, json_name: "takeRate", deprecated: false
  field :reward_change_rate, 5, type: :string, json_name: "rewardChangeRate", deprecated: false

  field :reward_change_interval, 6,
    type: Google.Protobuf.Duration,
    json_name: "rewardChangeInterval",
    deprecated: false

  field :reward_weight_range, 7,
    type: Alliance.Alliance.RewardWeightRange,
    json_name: "rewardWeightRange",
    deprecated: false
end

defmodule Alliance.Alliance.MsgCreateAllianceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Alliance.Alliance.MsgUpdateAlliance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :authority, 1, type: :string, deprecated: false
  field :denom, 2, type: :string, deprecated: false
  field :reward_weight, 3, type: :string, json_name: "rewardWeight", deprecated: false
  field :take_rate, 4, type: :string, json_name: "takeRate", deprecated: false
  field :reward_change_rate, 5, type: :string, json_name: "rewardChangeRate", deprecated: false

  field :reward_change_interval, 6,
    type: Google.Protobuf.Duration,
    json_name: "rewardChangeInterval",
    deprecated: false
end

defmodule Alliance.Alliance.MsgUpdateAllianceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Alliance.Alliance.MsgDeleteAlliance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :authority, 1, type: :string, deprecated: false
  field :denom, 2, type: :string, deprecated: false
end

defmodule Alliance.Alliance.MsgDeleteAllianceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Alliance.Alliance.Msg.Service do
  @moduledoc false
  use GRPC.Service, name: "alliance.alliance.Msg", protoc_gen_elixir_version: "0.11.0"

  rpc :Delegate, Alliance.Alliance.MsgDelegate, Alliance.Alliance.MsgDelegateResponse

  rpc :Redelegate, Alliance.Alliance.MsgRedelegate, Alliance.Alliance.MsgRedelegateResponse

  rpc :Undelegate, Alliance.Alliance.MsgUndelegate, Alliance.Alliance.MsgUndelegateResponse

  rpc :ClaimDelegationRewards,
      Alliance.Alliance.MsgClaimDelegationRewards,
      Alliance.Alliance.MsgClaimDelegationRewardsResponse

  rpc :UpdateParams, Alliance.Alliance.MsgUpdateParams, Alliance.Alliance.MsgUpdateParamsResponse

  rpc :CreateAlliance,
      Alliance.Alliance.MsgCreateAlliance,
      Alliance.Alliance.MsgCreateAllianceResponse

  rpc :UpdateAlliance,
      Alliance.Alliance.MsgUpdateAlliance,
      Alliance.Alliance.MsgUpdateAllianceResponse

  rpc :DeleteAlliance,
      Alliance.Alliance.MsgDeleteAlliance,
      Alliance.Alliance.MsgDeleteAllianceResponse
end

defmodule Alliance.Alliance.Msg.Stub do
  @moduledoc false
  use GRPC.Stub, service: Alliance.Alliance.Msg.Service
end