defmodule Kujira.Oracle.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Kujira.Oracle.Params, deprecated: false

  field :feeder_delegations, 2,
    repeated: true,
    type: Kujira.Oracle.FeederDelegation,
    json_name: "feederDelegations",
    deprecated: false

  field :exchange_rates, 3,
    repeated: true,
    type: Kujira.Oracle.ExchangeRateTuple,
    json_name: "exchangeRates",
    deprecated: false

  field :miss_counters, 4,
    repeated: true,
    type: Kujira.Oracle.MissCounter,
    json_name: "missCounters",
    deprecated: false

  field :aggregate_exchange_rate_prevotes, 5,
    repeated: true,
    type: Kujira.Oracle.AggregateExchangeRatePrevote,
    json_name: "aggregateExchangeRatePrevotes",
    deprecated: false

  field :aggregate_exchange_rate_votes, 6,
    repeated: true,
    type: Kujira.Oracle.AggregateExchangeRateVote,
    json_name: "aggregateExchangeRateVotes",
    deprecated: false
end

defmodule Kujira.Oracle.FeederDelegation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :feeder_address, 1, type: :string, json_name: "feederAddress"
  field :validator_address, 2, type: :string, json_name: "validatorAddress"
end

defmodule Kujira.Oracle.MissCounter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_address, 1, type: :string, json_name: "validatorAddress"
  field :miss_counter, 2, type: :uint64, json_name: "missCounter"
end