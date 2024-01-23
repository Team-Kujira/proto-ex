defmodule Ibc.Core.Connection.V1.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNINITIALIZED_UNSPECIFIED, 0
  field :STATE_INIT, 1
  field :STATE_TRYOPEN, 2
  field :STATE_OPEN, 3
end

defmodule Ibc.Core.Connection.V1.ConnectionEnd do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false
  field :versions, 2, repeated: true, type: Ibc.Core.Connection.V1.Version
  field :state, 3, type: Ibc.Core.Connection.V1.State, enum: true
  field :counterparty, 4, type: Ibc.Core.Connection.V1.Counterparty, deprecated: false
  field :delay_period, 5, type: :uint64, json_name: "delayPeriod", deprecated: false
end

defmodule Ibc.Core.Connection.V1.IdentifiedConnection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :client_id, 2, type: :string, json_name: "clientId", deprecated: false
  field :versions, 3, repeated: true, type: Ibc.Core.Connection.V1.Version
  field :state, 4, type: Ibc.Core.Connection.V1.State, enum: true
  field :counterparty, 5, type: Ibc.Core.Connection.V1.Counterparty, deprecated: false
  field :delay_period, 6, type: :uint64, json_name: "delayPeriod", deprecated: false
end

defmodule Ibc.Core.Connection.V1.Counterparty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false
  field :connection_id, 2, type: :string, json_name: "connectionId", deprecated: false
  field :prefix, 3, type: Ibc.Core.Commitment.V1.MerklePrefix, deprecated: false
end

defmodule Ibc.Core.Connection.V1.ClientPaths do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :paths, 1, repeated: true, type: :string
end

defmodule Ibc.Core.Connection.V1.ConnectionPaths do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false
  field :paths, 2, repeated: true, type: :string
end

defmodule Ibc.Core.Connection.V1.Version do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :identifier, 1, type: :string
  field :features, 2, repeated: true, type: :string
end

defmodule Ibc.Core.Connection.V1.Params do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_expected_time_per_block, 1,
    type: :uint64,
    json_name: "maxExpectedTimePerBlock",
    deprecated: false
end