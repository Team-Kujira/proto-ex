defmodule Cosmos.Consensus.V1.MsgUpdateParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :authority, 1, type: :string, deprecated: false
  field :block, 2, type: Tendermint.Types.BlockParams
  field :evidence, 3, type: Tendermint.Types.EvidenceParams
  field :validator, 4, type: Tendermint.Types.ValidatorParams
end

defmodule Cosmos.Consensus.V1.MsgUpdateParamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Cosmos.Consensus.V1.Msg.Service do
  @moduledoc false
  use GRPC.Service, name: "cosmos.consensus.v1.Msg", protoc_gen_elixir_version: "0.11.0"

  rpc :UpdateParams,
      Cosmos.Consensus.V1.MsgUpdateParams,
      Cosmos.Consensus.V1.MsgUpdateParamsResponse
end

defmodule Cosmos.Consensus.V1.Msg.Stub do
  @moduledoc false
  use GRPC.Stub, service: Cosmos.Consensus.V1.Msg.Service
end