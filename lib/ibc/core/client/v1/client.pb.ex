defmodule Ibc.Core.Client.V1.IdentifiedClientState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false
  field :client_state, 2, type: Google.Protobuf.Any, json_name: "clientState", deprecated: false
end

defmodule Ibc.Core.Client.V1.ConsensusStateWithHeight do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :height, 1, type: Ibc.Core.Client.V1.Height, deprecated: false

  field :consensus_state, 2,
    type: Google.Protobuf.Any,
    json_name: "consensusState",
    deprecated: false
end

defmodule Ibc.Core.Client.V1.ClientConsensusStates do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false

  field :consensus_states, 2,
    repeated: true,
    type: Ibc.Core.Client.V1.ConsensusStateWithHeight,
    json_name: "consensusStates",
    deprecated: false
end

defmodule Ibc.Core.Client.V1.ClientUpdateProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :subject_client_id, 3, type: :string, json_name: "subjectClientId", deprecated: false

  field :substitute_client_id, 4,
    type: :string,
    json_name: "substituteClientId",
    deprecated: false
end

defmodule Ibc.Core.Client.V1.UpgradeProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :plan, 3, type: Cosmos.Upgrade.V1beta1.Plan, deprecated: false

  field :upgraded_client_state, 4,
    type: Google.Protobuf.Any,
    json_name: "upgradedClientState",
    deprecated: false
end

defmodule Ibc.Core.Client.V1.Height do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :revision_number, 1, type: :uint64, json_name: "revisionNumber", deprecated: false
  field :revision_height, 2, type: :uint64, json_name: "revisionHeight", deprecated: false
end

defmodule Ibc.Core.Client.V1.Params do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allowed_clients, 1,
    repeated: true,
    type: :string,
    json_name: "allowedClients",
    deprecated: false
end