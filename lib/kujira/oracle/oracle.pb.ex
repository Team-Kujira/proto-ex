defmodule Kujira.Oracle.Params do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vote_period, 1, type: :uint64, json_name: "votePeriod", deprecated: false
  field :vote_threshold, 2, type: :string, json_name: "voteThreshold", deprecated: false
  field :reward_band, 3, type: :string, json_name: "rewardBand", deprecated: false

  field :reward_distribution_window, 4,
    type: :uint64,
    json_name: "rewardDistributionWindow",
    deprecated: false

  field :whitelist, 5, repeated: true, type: Kujira.Oracle.Denom, deprecated: false
  field :slash_fraction, 6, type: :string, json_name: "slashFraction", deprecated: false
  field :slash_window, 7, type: :uint64, json_name: "slashWindow", deprecated: false
  field :min_valid_per_window, 8, type: :string, json_name: "minValidPerWindow", deprecated: false
end

defmodule Kujira.Oracle.Denom do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Kujira.Oracle.AggregateExchangeRatePrevote do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hash, 1, type: :string, deprecated: false
  field :voter, 2, type: :string, deprecated: false
  field :submit_block, 3, type: :uint64, json_name: "submitBlock", deprecated: false
end

defmodule Kujira.Oracle.AggregateExchangeRateVote do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :exchange_rate_tuples, 1,
    repeated: true,
    type: Kujira.Oracle.ExchangeRateTuple,
    json_name: "exchangeRateTuples",
    deprecated: false

  field :voter, 2, type: :string, deprecated: false
end

defmodule Kujira.Oracle.ExchangeRateTuple do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom, 1, type: :string, deprecated: false
  field :exchange_rate, 2, type: :string, json_name: "exchangeRate", deprecated: false
end