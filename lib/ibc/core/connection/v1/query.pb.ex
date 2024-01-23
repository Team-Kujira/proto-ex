defmodule Ibc.Core.Connection.V1.QueryConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection_id, 1, type: :string, json_name: "connectionId"
end

defmodule Ibc.Core.Connection.V1.QueryConnectionResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection, 1, type: Ibc.Core.Connection.V1.ConnectionEnd
  field :proof, 2, type: :bytes

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Connection.V1.QueryConnectionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pagination, 1, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Ibc.Core.Connection.V1.QueryConnectionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connections, 1, repeated: true, type: Ibc.Core.Connection.V1.IdentifiedConnection
  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
  field :height, 3, type: Ibc.Core.Client.V1.Height, deprecated: false
end

defmodule Ibc.Core.Connection.V1.QueryClientConnectionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId"
end

defmodule Ibc.Core.Connection.V1.QueryClientConnectionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection_paths, 1, repeated: true, type: :string, json_name: "connectionPaths"
  field :proof, 2, type: :bytes

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Connection.V1.QueryConnectionClientStateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection_id, 1, type: :string, json_name: "connectionId", deprecated: false
end

defmodule Ibc.Core.Connection.V1.QueryConnectionClientStateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :identified_client_state, 1,
    type: Ibc.Core.Client.V1.IdentifiedClientState,
    json_name: "identifiedClientState"

  field :proof, 2, type: :bytes

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Connection.V1.QueryConnectionConsensusStateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection_id, 1, type: :string, json_name: "connectionId", deprecated: false
  field :revision_number, 2, type: :uint64, json_name: "revisionNumber"
  field :revision_height, 3, type: :uint64, json_name: "revisionHeight"
end

defmodule Ibc.Core.Connection.V1.QueryConnectionConsensusStateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :consensus_state, 1, type: Google.Protobuf.Any, json_name: "consensusState"
  field :client_id, 2, type: :string, json_name: "clientId"
  field :proof, 3, type: :bytes

  field :proof_height, 4,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false
end

defmodule Ibc.Core.Connection.V1.QueryConnectionParamsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Connection.V1.QueryConnectionParamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Ibc.Core.Connection.V1.Params
end

defmodule Ibc.Core.Connection.V1.Query.Service do
  @moduledoc false
  use GRPC.Service, name: "ibc.core.connection.v1.Query", protoc_gen_elixir_version: "0.11.0"

  rpc :Connection,
      Ibc.Core.Connection.V1.QueryConnectionRequest,
      Ibc.Core.Connection.V1.QueryConnectionResponse

  rpc :Connections,
      Ibc.Core.Connection.V1.QueryConnectionsRequest,
      Ibc.Core.Connection.V1.QueryConnectionsResponse

  rpc :ClientConnections,
      Ibc.Core.Connection.V1.QueryClientConnectionsRequest,
      Ibc.Core.Connection.V1.QueryClientConnectionsResponse

  rpc :ConnectionClientState,
      Ibc.Core.Connection.V1.QueryConnectionClientStateRequest,
      Ibc.Core.Connection.V1.QueryConnectionClientStateResponse

  rpc :ConnectionConsensusState,
      Ibc.Core.Connection.V1.QueryConnectionConsensusStateRequest,
      Ibc.Core.Connection.V1.QueryConnectionConsensusStateResponse

  rpc :ConnectionParams,
      Ibc.Core.Connection.V1.QueryConnectionParamsRequest,
      Ibc.Core.Connection.V1.QueryConnectionParamsResponse
end

defmodule Ibc.Core.Connection.V1.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Core.Connection.V1.Query.Service
end