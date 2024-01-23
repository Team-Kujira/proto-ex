defmodule Ibc.Core.Connection.V1.MsgConnectionOpenInit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false
  field :counterparty, 2, type: Ibc.Core.Connection.V1.Counterparty, deprecated: false
  field :version, 3, type: Ibc.Core.Connection.V1.Version
  field :delay_period, 4, type: :uint64, json_name: "delayPeriod", deprecated: false
  field :signer, 5, type: :string
end

defmodule Ibc.Core.Connection.V1.MsgConnectionOpenInitResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Connection.V1.MsgConnectionOpenTry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false

  field :previous_connection_id, 2,
    type: :string,
    json_name: "previousConnectionId",
    deprecated: true

  field :client_state, 3, type: Google.Protobuf.Any, json_name: "clientState", deprecated: false
  field :counterparty, 4, type: Ibc.Core.Connection.V1.Counterparty, deprecated: false
  field :delay_period, 5, type: :uint64, json_name: "delayPeriod", deprecated: false

  field :counterparty_versions, 6,
    repeated: true,
    type: Ibc.Core.Connection.V1.Version,
    json_name: "counterpartyVersions",
    deprecated: false

  field :proof_height, 7,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false

  field :proof_init, 8, type: :bytes, json_name: "proofInit", deprecated: false
  field :proof_client, 9, type: :bytes, json_name: "proofClient", deprecated: false
  field :proof_consensus, 10, type: :bytes, json_name: "proofConsensus", deprecated: false

  field :consensus_height, 11,
    type: Ibc.Core.Client.V1.Height,
    json_name: "consensusHeight",
    deprecated: false

  field :signer, 12, type: :string
  field :host_consensus_state_proof, 13, type: :bytes, json_name: "hostConsensusStateProof"
end

defmodule Ibc.Core.Connection.V1.MsgConnectionOpenTryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Connection.V1.MsgConnectionOpenAck do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection_id, 1, type: :string, json_name: "connectionId", deprecated: false

  field :counterparty_connection_id, 2,
    type: :string,
    json_name: "counterpartyConnectionId",
    deprecated: false

  field :version, 3, type: Ibc.Core.Connection.V1.Version
  field :client_state, 4, type: Google.Protobuf.Any, json_name: "clientState", deprecated: false

  field :proof_height, 5,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false

  field :proof_try, 6, type: :bytes, json_name: "proofTry", deprecated: false
  field :proof_client, 7, type: :bytes, json_name: "proofClient", deprecated: false
  field :proof_consensus, 8, type: :bytes, json_name: "proofConsensus", deprecated: false

  field :consensus_height, 9,
    type: Ibc.Core.Client.V1.Height,
    json_name: "consensusHeight",
    deprecated: false

  field :signer, 10, type: :string
  field :host_consensus_state_proof, 11, type: :bytes, json_name: "hostConsensusStateProof"
end

defmodule Ibc.Core.Connection.V1.MsgConnectionOpenAckResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Connection.V1.MsgConnectionOpenConfirm do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection_id, 1, type: :string, json_name: "connectionId", deprecated: false
  field :proof_ack, 2, type: :bytes, json_name: "proofAck", deprecated: false

  field :proof_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "proofHeight",
    deprecated: false

  field :signer, 4, type: :string
end

defmodule Ibc.Core.Connection.V1.MsgConnectionOpenConfirmResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Core.Connection.V1.Msg.Service do
  @moduledoc false
  use GRPC.Service, name: "ibc.core.connection.v1.Msg", protoc_gen_elixir_version: "0.11.0"

  rpc :ConnectionOpenInit,
      Ibc.Core.Connection.V1.MsgConnectionOpenInit,
      Ibc.Core.Connection.V1.MsgConnectionOpenInitResponse

  rpc :ConnectionOpenTry,
      Ibc.Core.Connection.V1.MsgConnectionOpenTry,
      Ibc.Core.Connection.V1.MsgConnectionOpenTryResponse

  rpc :ConnectionOpenAck,
      Ibc.Core.Connection.V1.MsgConnectionOpenAck,
      Ibc.Core.Connection.V1.MsgConnectionOpenAckResponse

  rpc :ConnectionOpenConfirm,
      Ibc.Core.Connection.V1.MsgConnectionOpenConfirm,
      Ibc.Core.Connection.V1.MsgConnectionOpenConfirmResponse
end

defmodule Ibc.Core.Connection.V1.Msg.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Core.Connection.V1.Msg.Service
end