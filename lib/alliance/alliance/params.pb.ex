defmodule Alliance.Alliance.Params do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reward_delay_time, 1,
    type: Google.Protobuf.Duration,
    json_name: "rewardDelayTime",
    deprecated: false

  field :take_rate_claim_interval, 2,
    type: Google.Protobuf.Duration,
    json_name: "takeRateClaimInterval",
    deprecated: false

  field :last_take_rate_claim_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "lastTakeRateClaimTime",
    deprecated: false
end

defmodule Alliance.Alliance.RewardHistory do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom, 1, type: :string
  field :index, 2, type: :string, deprecated: false
end