defmodule Kujira.Oracle.MsgAggregateExchangeRatePrevote do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hash, 1, type: :string, deprecated: false
  field :feeder, 2, type: :string, deprecated: false
  field :validator, 3, type: :string, deprecated: false
end

defmodule Kujira.Oracle.MsgAggregateExchangeRatePrevoteResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Oracle.MsgAggregateExchangeRateVote do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :salt, 1, type: :string, deprecated: false
  field :exchange_rates, 2, type: :string, json_name: "exchangeRates", deprecated: false
  field :feeder, 3, type: :string, deprecated: false
  field :validator, 4, type: :string, deprecated: false
end

defmodule Kujira.Oracle.MsgAggregateExchangeRateVoteResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Oracle.MsgDelegateFeedConsent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operator, 1, type: :string, deprecated: false
  field :delegate, 2, type: :string, deprecated: false
end

defmodule Kujira.Oracle.MsgDelegateFeedConsentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Oracle.Msg.Service do
  @moduledoc false
  use GRPC.Service, name: "kujira.oracle.Msg", protoc_gen_elixir_version: "0.11.0"

  rpc :AggregateExchangeRatePrevote,
      Kujira.Oracle.MsgAggregateExchangeRatePrevote,
      Kujira.Oracle.MsgAggregateExchangeRatePrevoteResponse

  rpc :AggregateExchangeRateVote,
      Kujira.Oracle.MsgAggregateExchangeRateVote,
      Kujira.Oracle.MsgAggregateExchangeRateVoteResponse

  rpc :DelegateFeedConsent,
      Kujira.Oracle.MsgDelegateFeedConsent,
      Kujira.Oracle.MsgDelegateFeedConsentResponse
end

defmodule Kujira.Oracle.Msg.Stub do
  @moduledoc false
  use GRPC.Stub, service: Kujira.Oracle.Msg.Service
end