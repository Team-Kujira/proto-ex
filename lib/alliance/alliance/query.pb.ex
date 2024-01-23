defmodule Alliance.Alliance.QueryParamsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Alliance.Alliance.QueryParamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Alliance.Alliance.Params, deprecated: false
end

defmodule Alliance.Alliance.QueryAlliancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pagination, 1, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Alliance.Alliance.QueryAlliancesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :alliances, 1, repeated: true, type: Alliance.Alliance.AllianceAsset, deprecated: false
  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
end

defmodule Alliance.Alliance.QueryAllianceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom, 1, type: :string
end

defmodule Alliance.Alliance.QueryAllianceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :alliance, 1, type: Alliance.Alliance.AllianceAsset
end

defmodule Alliance.Alliance.QueryIBCAllianceRequest do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hash, 1, type: :string
end

defmodule Alliance.Alliance.QueryAllianceValidatorRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_addr, 1, type: :string, json_name: "validatorAddr"
end

defmodule Alliance.Alliance.QueryAllAllianceValidatorsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pagination, 1, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Alliance.Alliance.QueryAllAlliancesDelegationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pagination, 1, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Alliance.Alliance.QueryAlliancesDelegationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_addr, 1, type: :string, json_name: "delegatorAddr"
  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Alliance.Alliance.QueryAlliancesDelegationByValidatorRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_addr, 1, type: :string, json_name: "delegatorAddr"
  field :validator_addr, 2, type: :string, json_name: "validatorAddr"
  field :pagination, 3, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Alliance.Alliance.DelegationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegation, 1, type: Alliance.Alliance.Delegation, deprecated: false
  field :balance, 2, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end

defmodule Alliance.Alliance.QueryAlliancesDelegationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegations, 1,
    repeated: true,
    type: Alliance.Alliance.DelegationResponse,
    deprecated: false

  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
end

defmodule Alliance.Alliance.QueryAllianceDelegationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_addr, 1, type: :string, json_name: "delegatorAddr"
  field :validator_addr, 2, type: :string, json_name: "validatorAddr"
  field :denom, 3, type: :string
  field :pagination, 4, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Alliance.Alliance.QueryIBCAllianceDelegationRequest do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_addr, 1, type: :string, json_name: "delegatorAddr"
  field :validator_addr, 2, type: :string, json_name: "validatorAddr"
  field :hash, 3, type: :string
  field :pagination, 4, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Alliance.Alliance.QueryAllianceDelegationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegation, 1, type: Alliance.Alliance.DelegationResponse, deprecated: false
end

defmodule Alliance.Alliance.QueryAllianceDelegationRewardsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_addr, 1, type: :string, json_name: "delegatorAddr"
  field :validator_addr, 2, type: :string, json_name: "validatorAddr"
  field :denom, 3, type: :string
  field :pagination, 4, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Alliance.Alliance.QueryIBCAllianceDelegationRewardsRequest do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delegator_addr, 1, type: :string, json_name: "delegatorAddr"
  field :validator_addr, 2, type: :string, json_name: "validatorAddr"
  field :hash, 3, type: :string
  field :pagination, 4, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Alliance.Alliance.QueryAllianceDelegationRewardsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rewards, 1, repeated: true, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end

defmodule Alliance.Alliance.QueryAllianceValidatorResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_addr, 1, type: :string, json_name: "validatorAddr"

  field :total_delegation_shares, 2,
    repeated: true,
    type: Cosmos.Base.V1beta1.DecCoin,
    json_name: "totalDelegationShares",
    deprecated: false

  field :validator_shares, 3,
    repeated: true,
    type: Cosmos.Base.V1beta1.DecCoin,
    json_name: "validatorShares",
    deprecated: false

  field :total_staked, 4,
    repeated: true,
    type: Cosmos.Base.V1beta1.DecCoin,
    json_name: "totalStaked",
    deprecated: false
end

defmodule Alliance.Alliance.QueryAllianceValidatorsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validators, 1,
    repeated: true,
    type: Alliance.Alliance.QueryAllianceValidatorResponse,
    deprecated: false

  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
end

defmodule Alliance.Alliance.QueryAllianceUnbondingsByDenomAndDelegatorRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom, 1, type: :string
  field :delegator_addr, 2, type: :string, json_name: "delegatorAddr"
  field :pagination, 3, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Alliance.Alliance.QueryAllianceUnbondingsByDenomAndDelegatorResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :unbondings, 1,
    repeated: true,
    type: Alliance.Alliance.UnbondingDelegation,
    deprecated: false

  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
end

defmodule Alliance.Alliance.QueryAllianceUnbondingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom, 1, type: :string
  field :delegator_addr, 2, type: :string, json_name: "delegatorAddr"
  field :validator_addr, 3, type: :string, json_name: "validatorAddr"
  field :pagination, 4, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Alliance.Alliance.QueryAllianceUnbondingsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :unbondings, 1,
    repeated: true,
    type: Alliance.Alliance.UnbondingDelegation,
    deprecated: false

  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
end

defmodule Alliance.Alliance.QueryAllianceRedelegationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom, 1, type: :string
  field :delegator_addr, 2, type: :string, json_name: "delegatorAddr"
  field :pagination, 3, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Alliance.Alliance.QueryAllianceRedelegationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :redelegations, 1,
    repeated: true,
    type: Alliance.Alliance.RedelegationEntry,
    deprecated: false

  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
end

defmodule Alliance.Alliance.Query.Service do
  @moduledoc false
  use GRPC.Service, name: "alliance.alliance.Query", protoc_gen_elixir_version: "0.11.0"

  rpc :Params, Alliance.Alliance.QueryParamsRequest, Alliance.Alliance.QueryParamsResponse

  rpc :Alliances,
      Alliance.Alliance.QueryAlliancesRequest,
      Alliance.Alliance.QueryAlliancesResponse

  rpc :IBCAlliance,
      Alliance.Alliance.QueryIBCAllianceRequest,
      Alliance.Alliance.QueryAllianceResponse

  rpc :AllAlliancesDelegations,
      Alliance.Alliance.QueryAllAlliancesDelegationsRequest,
      Alliance.Alliance.QueryAlliancesDelegationsResponse

  rpc :AllianceValidator,
      Alliance.Alliance.QueryAllianceValidatorRequest,
      Alliance.Alliance.QueryAllianceValidatorResponse

  rpc :AllAllianceValidators,
      Alliance.Alliance.QueryAllAllianceValidatorsRequest,
      Alliance.Alliance.QueryAllianceValidatorsResponse

  rpc :AlliancesDelegation,
      Alliance.Alliance.QueryAlliancesDelegationsRequest,
      Alliance.Alliance.QueryAlliancesDelegationsResponse

  rpc :AlliancesDelegationByValidator,
      Alliance.Alliance.QueryAlliancesDelegationByValidatorRequest,
      Alliance.Alliance.QueryAlliancesDelegationsResponse

  rpc :AllianceDelegation,
      Alliance.Alliance.QueryAllianceDelegationRequest,
      Alliance.Alliance.QueryAllianceDelegationResponse

  rpc :IBCAllianceDelegation,
      Alliance.Alliance.QueryIBCAllianceDelegationRequest,
      Alliance.Alliance.QueryAllianceDelegationResponse

  rpc :AllianceDelegationRewards,
      Alliance.Alliance.QueryAllianceDelegationRewardsRequest,
      Alliance.Alliance.QueryAllianceDelegationRewardsResponse

  rpc :IBCAllianceDelegationRewards,
      Alliance.Alliance.QueryIBCAllianceDelegationRewardsRequest,
      Alliance.Alliance.QueryAllianceDelegationRewardsResponse

  rpc :AllianceUnbondingsByDenomAndDelegator,
      Alliance.Alliance.QueryAllianceUnbondingsByDenomAndDelegatorRequest,
      Alliance.Alliance.QueryAllianceUnbondingsByDenomAndDelegatorResponse

  rpc :AllianceUnbondings,
      Alliance.Alliance.QueryAllianceUnbondingsRequest,
      Alliance.Alliance.QueryAllianceUnbondingsResponse

  rpc :AllianceRedelegations,
      Alliance.Alliance.QueryAllianceRedelegationsRequest,
      Alliance.Alliance.QueryAllianceRedelegationsResponse

  rpc :Alliance, Alliance.Alliance.QueryAllianceRequest, Alliance.Alliance.QueryAllianceResponse
end

defmodule Alliance.Alliance.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Alliance.Alliance.Query.Service
end