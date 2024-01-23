defmodule Ibc.Core.Client.V1.QueryClientStateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId"
end

defmodule Ibc.Core.Client.V1.QueryClientStateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_state, 1, type: Google.Protobuf.Any, json_name: "clientState"
  field :proof, 2, type: :bytes

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Client.V1.QueryClientStatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pagination, 1, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Ibc.Core.Client.V1.QueryClientStatesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_states, 1,
    repeated: true,
    type: Ibc.Core.Client.V1.IdentifiedClientState,
    json_name: "clientStates",
    deprecated: false

  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
end

defmodule Ibc.Core.Client.V1.QueryConsensusStateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId"
  field :revision_number, 2, type: :uint64, json_name: "revisionNumber"
  field :revision_height, 3, type: :uint64, json_name: "revisionHeight"
  field :latest_height, 4, type: :bool, json_name: "latestHeight"
end

defmodule Ibc.Core.Client.V1.QueryConsensusStateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :consensus_state, 1, type: Google.Protobuf.Any, json_name: "consensusState"
  field :proof, 2, type: :bytes

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Client.V1.QueryConsensusStatesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId"
  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Ibc.Core.Client.V1.QueryConsensusStatesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :consensus_states, 1,
    repeated: true,
    type: Ibc.Core.Client.V1.ConsensusStateWithHeight,
    json_name: "consensusStates",
    deprecated: false

  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
end

defmodule Ibc.Core.Client.V1.QueryConsensusStateHeightsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId"
  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Ibc.Core.Client.V1.QueryConsensusStateHeightsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :consensus_state_heights, 1,
    repeated: true,
    type: Ibc.Core.Client.V1.Height,
    json_name: "consensusStateHeights",
    deprecated: false

  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
end

defmodule Ibc.Core.Client.V1.QueryClientStatusRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId"
end

defmodule Ibc.Core.Client.V1.QueryClientStatusResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :status, 1, type: :string
end

defmodule Ibc.Core.Client.V1.QueryClientParamsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Client.V1.QueryClientParamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Ibc.Core.Client.V1.Params
end

defmodule Ibc.Core.Client.V1.QueryUpgradedClientStateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Client.V1.QueryUpgradedClientStateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :upgraded_client_state, 1, type: Google.Protobuf.Any, json_name: "upgradedClientState"
end

defmodule Ibc.Core.Client.V1.QueryUpgradedConsensusStateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Client.V1.QueryUpgradedConsensusStateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :upgraded_consensus_state, 1,
    type: Google.Protobuf.Any,
    json_name: "upgradedConsensusState"
end

defmodule Ibc.Core.Client.V1.Query.Service do
  @moduledoc false
  use GRPC.Service, name: "ibc.core.client.v1.Query", protoc_gen_elixir_version: "0.11.0"

  rpc :ClientState,
      Ibc.Core.Client.V1.QueryClientStateRequest,
      Ibc.Core.Client.V1.QueryClientStateResponse

  rpc :ClientStates,
      Ibc.Core.Client.V1.QueryClientStatesRequest,
      Ibc.Core.Client.V1.QueryClientStatesResponse

  rpc :ConsensusState,
      Ibc.Core.Client.V1.QueryConsensusStateRequest,
      Ibc.Core.Client.V1.QueryConsensusStateResponse

  rpc :ConsensusStates,
      Ibc.Core.Client.V1.QueryConsensusStatesRequest,
      Ibc.Core.Client.V1.QueryConsensusStatesResponse

  rpc :ConsensusStateHeights,
      Ibc.Core.Client.V1.QueryConsensusStateHeightsRequest,
      Ibc.Core.Client.V1.QueryConsensusStateHeightsResponse

  rpc :ClientStatus,
      Ibc.Core.Client.V1.QueryClientStatusRequest,
      Ibc.Core.Client.V1.QueryClientStatusResponse

  rpc :ClientParams,
      Ibc.Core.Client.V1.QueryClientParamsRequest,
      Ibc.Core.Client.V1.QueryClientParamsResponse

  rpc :UpgradedClientState,
      Ibc.Core.Client.V1.QueryUpgradedClientStateRequest,
      Ibc.Core.Client.V1.QueryUpgradedClientStateResponse

  rpc :UpgradedConsensusState,
      Ibc.Core.Client.V1.QueryUpgradedConsensusStateRequest,
      Ibc.Core.Client.V1.QueryUpgradedConsensusStateResponse
end

defmodule Ibc.Core.Client.V1.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Core.Client.V1.Query.Service
end