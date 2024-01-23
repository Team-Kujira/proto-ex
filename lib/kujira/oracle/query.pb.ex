defmodule Kujira.Oracle.QueryExchangeRateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom, 1, type: :string
end

defmodule Kujira.Oracle.QueryExchangeRateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :exchange_rate, 1, type: :string, json_name: "exchangeRate", deprecated: false
end

defmodule Kujira.Oracle.QueryExchangeRatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Oracle.QueryExchangeRatesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :exchange_rates, 1,
    repeated: true,
    type: Cosmos.Base.V1beta1.DecCoin,
    json_name: "exchangeRates",
    deprecated: false
end

defmodule Kujira.Oracle.QueryActivesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Oracle.QueryActivesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :actives, 1, repeated: true, type: :string
end

defmodule Kujira.Oracle.QueryVoteTargetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Oracle.QueryVoteTargetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vote_targets, 1, repeated: true, type: :string, json_name: "voteTargets"
end

defmodule Kujira.Oracle.QueryFeederDelegationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_addr, 1, type: :string, json_name: "validatorAddr"
end

defmodule Kujira.Oracle.QueryFeederDelegationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :feeder_addr, 1, type: :string, json_name: "feederAddr"
end

defmodule Kujira.Oracle.QueryMissCounterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_addr, 1, type: :string, json_name: "validatorAddr"
end

defmodule Kujira.Oracle.QueryMissCounterResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :miss_counter, 1, type: :uint64, json_name: "missCounter"
end

defmodule Kujira.Oracle.QueryAggregatePrevoteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_addr, 1, type: :string, json_name: "validatorAddr"
end

defmodule Kujira.Oracle.QueryAggregatePrevoteResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :aggregate_prevote, 1,
    type: Kujira.Oracle.AggregateExchangeRatePrevote,
    json_name: "aggregatePrevote",
    deprecated: false
end

defmodule Kujira.Oracle.QueryAggregatePrevotesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Oracle.QueryAggregatePrevotesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :aggregate_prevotes, 1,
    repeated: true,
    type: Kujira.Oracle.AggregateExchangeRatePrevote,
    json_name: "aggregatePrevotes",
    deprecated: false
end

defmodule Kujira.Oracle.QueryAggregateVoteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_addr, 1, type: :string, json_name: "validatorAddr"
end

defmodule Kujira.Oracle.QueryAggregateVoteResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :aggregate_vote, 1,
    type: Kujira.Oracle.AggregateExchangeRateVote,
    json_name: "aggregateVote",
    deprecated: false
end

defmodule Kujira.Oracle.QueryAggregateVotesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Oracle.QueryAggregateVotesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :aggregate_votes, 1,
    repeated: true,
    type: Kujira.Oracle.AggregateExchangeRateVote,
    json_name: "aggregateVotes",
    deprecated: false
end

defmodule Kujira.Oracle.QueryParamsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Oracle.QueryParamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Kujira.Oracle.Params, deprecated: false
end

defmodule Kujira.Oracle.Query.Service do
  @moduledoc false
  use GRPC.Service, name: "kujira.oracle.Query", protoc_gen_elixir_version: "0.11.0"

  rpc :ExchangeRate,
      Kujira.Oracle.QueryExchangeRateRequest,
      Kujira.Oracle.QueryExchangeRateResponse

  rpc :ExchangeRates,
      Kujira.Oracle.QueryExchangeRatesRequest,
      Kujira.Oracle.QueryExchangeRatesResponse

  rpc :Actives, Kujira.Oracle.QueryActivesRequest, Kujira.Oracle.QueryActivesResponse

  rpc :FeederDelegation,
      Kujira.Oracle.QueryFeederDelegationRequest,
      Kujira.Oracle.QueryFeederDelegationResponse

  rpc :MissCounter, Kujira.Oracle.QueryMissCounterRequest, Kujira.Oracle.QueryMissCounterResponse

  rpc :AggregatePrevote,
      Kujira.Oracle.QueryAggregatePrevoteRequest,
      Kujira.Oracle.QueryAggregatePrevoteResponse

  rpc :AggregatePrevotes,
      Kujira.Oracle.QueryAggregatePrevotesRequest,
      Kujira.Oracle.QueryAggregatePrevotesResponse

  rpc :AggregateVote,
      Kujira.Oracle.QueryAggregateVoteRequest,
      Kujira.Oracle.QueryAggregateVoteResponse

  rpc :AggregateVotes,
      Kujira.Oracle.QueryAggregateVotesRequest,
      Kujira.Oracle.QueryAggregateVotesResponse

  rpc :Params, Kujira.Oracle.QueryParamsRequest, Kujira.Oracle.QueryParamsResponse
end

defmodule Kujira.Oracle.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Kujira.Oracle.Query.Service
end