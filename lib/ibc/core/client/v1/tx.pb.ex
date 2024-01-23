defmodule Ibc.Core.Client.V1.MsgCreateClient do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_state, 1, type: Google.Protobuf.Any, json_name: "clientState", deprecated: false

  field :consensus_state, 2,
    type: Google.Protobuf.Any,
    json_name: "consensusState",
    deprecated: false

  field :signer, 3, type: :string
end

defmodule Ibc.Core.Client.V1.MsgCreateClientResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Client.V1.MsgUpdateClient do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false
  field :client_message, 2, type: Google.Protobuf.Any, json_name: "clientMessage"
  field :signer, 3, type: :string
end

defmodule Ibc.Core.Client.V1.MsgUpdateClientResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Client.V1.MsgUpgradeClient do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false
  field :client_state, 2, type: Google.Protobuf.Any, json_name: "clientState", deprecated: false

  field :consensus_state, 3,
    type: Google.Protobuf.Any,
    json_name: "consensusState",
    deprecated: false

  field :proof_upgrade_client, 4, type: :bytes, json_name: "proofUpgradeClient", deprecated: false

  field :proof_upgrade_consensus_state, 5,
    type: :bytes,
    json_name: "proofUpgradeConsensusState",
    deprecated: false

  field :signer, 6, type: :string
end

defmodule Ibc.Core.Client.V1.MsgUpgradeClientResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Client.V1.MsgSubmitMisbehaviour do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: true
  field :misbehaviour, 2, type: Google.Protobuf.Any, deprecated: true
  field :signer, 3, type: :string, deprecated: true
end

defmodule Ibc.Core.Client.V1.MsgSubmitMisbehaviourResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Client.V1.Msg.Service do
  @moduledoc false
  use GRPC.Service, name: "ibc.core.client.v1.Msg", protoc_gen_elixir_version: "0.11.0"

  rpc :CreateClient,
      Ibc.Core.Client.V1.MsgCreateClient,
      Ibc.Core.Client.V1.MsgCreateClientResponse

  rpc :UpdateClient,
      Ibc.Core.Client.V1.MsgUpdateClient,
      Ibc.Core.Client.V1.MsgUpdateClientResponse

  rpc :UpgradeClient,
      Ibc.Core.Client.V1.MsgUpgradeClient,
      Ibc.Core.Client.V1.MsgUpgradeClientResponse

  rpc :SubmitMisbehaviour,
      Ibc.Core.Client.V1.MsgSubmitMisbehaviour,
      Ibc.Core.Client.V1.MsgSubmitMisbehaviourResponse
end

defmodule Ibc.Core.Client.V1.Msg.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Core.Client.V1.Msg.Service
end