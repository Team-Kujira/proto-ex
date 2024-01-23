defmodule Cosmos.Consensus.V1.QueryParamsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Cosmos.Consensus.V1.QueryParamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Tendermint.Types.ConsensusParams
end

defmodule Cosmos.Consensus.V1.Query.Service do
  @moduledoc false
  use GRPC.Service, name: "cosmos.consensus.v1.Query", protoc_gen_elixir_version: "0.11.0"

  rpc :Params, Cosmos.Consensus.V1.QueryParamsRequest, Cosmos.Consensus.V1.QueryParamsResponse
end

defmodule Cosmos.Consensus.V1.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Cosmos.Consensus.V1.Query.Service
end