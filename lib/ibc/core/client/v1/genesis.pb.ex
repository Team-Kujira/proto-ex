defmodule Ibc.Core.Client.V1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :clients, 1,
    repeated: true,
    type: Ibc.Core.Client.V1.IdentifiedClientState,
    deprecated: false

  field :clients_consensus, 2,
    repeated: true,
    type: Ibc.Core.Client.V1.ClientConsensusStates,
    json_name: "clientsConsensus",
    deprecated: false

  field :clients_metadata, 3,
    repeated: true,
    type: Ibc.Core.Client.V1.IdentifiedGenesisMetadata,
    json_name: "clientsMetadata",
    deprecated: false

  field :params, 4, type: Ibc.Core.Client.V1.Params, deprecated: false
  field :create_localhost, 5, type: :bool, json_name: "createLocalhost", deprecated: false

  field :next_client_sequence, 6,
    type: :uint64,
    json_name: "nextClientSequence",
    deprecated: false
end

defmodule Ibc.Core.Client.V1.GenesisMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :bytes
  field :value, 2, type: :bytes
end

defmodule Ibc.Core.Client.V1.IdentifiedGenesisMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false

  field :client_metadata, 2,
    repeated: true,
    type: Ibc.Core.Client.V1.GenesisMetadata,
    json_name: "clientMetadata",
    deprecated: false
end