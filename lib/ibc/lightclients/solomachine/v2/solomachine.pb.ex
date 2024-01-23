defmodule Ibc.Lightclients.Solomachine.V2.DataType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DATA_TYPE_UNINITIALIZED_UNSPECIFIED, 0
  field :DATA_TYPE_CLIENT_STATE, 1
  field :DATA_TYPE_CONSENSUS_STATE, 2
  field :DATA_TYPE_CONNECTION_STATE, 3
  field :DATA_TYPE_CHANNEL_STATE, 4
  field :DATA_TYPE_PACKET_COMMITMENT, 5
  field :DATA_TYPE_PACKET_ACKNOWLEDGEMENT, 6
  field :DATA_TYPE_PACKET_RECEIPT_ABSENCE, 7
  field :DATA_TYPE_NEXT_SEQUENCE_RECV, 8
  field :DATA_TYPE_HEADER, 9
end

defmodule Ibc.Lightclients.Solomachine.V2.ClientState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequence, 1, type: :uint64
  field :is_frozen, 2, type: :bool, json_name: "isFrozen", deprecated: false

  field :consensus_state, 3,
    type: Ibc.Lightclients.Solomachine.V2.ConsensusState,
    json_name: "consensusState",
    deprecated: false

  field :allow_update_after_proposal, 4,
    type: :bool,
    json_name: "allowUpdateAfterProposal",
    deprecated: false
end

defmodule Ibc.Lightclients.Solomachine.V2.ConsensusState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :public_key, 1, type: Google.Protobuf.Any, json_name: "publicKey", deprecated: false
  field :diversifier, 2, type: :string
  field :timestamp, 3, type: :uint64
end

defmodule Ibc.Lightclients.Solomachine.V2.Header do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequence, 1, type: :uint64
  field :timestamp, 2, type: :uint64
  field :signature, 3, type: :bytes

  field :new_public_key, 4,
    type: Google.Protobuf.Any,
    json_name: "newPublicKey",
    deprecated: false

  field :new_diversifier, 5, type: :string, json_name: "newDiversifier", deprecated: false
end

defmodule Ibc.Lightclients.Solomachine.V2.Misbehaviour do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false
  field :sequence, 2, type: :uint64

  field :signature_one, 3,
    type: Ibc.Lightclients.Solomachine.V2.SignatureAndData,
    json_name: "signatureOne",
    deprecated: false

  field :signature_two, 4,
    type: Ibc.Lightclients.Solomachine.V2.SignatureAndData,
    json_name: "signatureTwo",
    deprecated: false
end

defmodule Ibc.Lightclients.Solomachine.V2.SignatureAndData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :signature, 1, type: :bytes

  field :data_type, 2,
    type: Ibc.Lightclients.Solomachine.V2.DataType,
    json_name: "dataType",
    enum: true,
    deprecated: false

  field :data, 3, type: :bytes
  field :timestamp, 4, type: :uint64
end

defmodule Ibc.Lightclients.Solomachine.V2.TimestampedSignatureData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :signature_data, 1, type: :bytes, json_name: "signatureData", deprecated: false
  field :timestamp, 2, type: :uint64
end

defmodule Ibc.Lightclients.Solomachine.V2.SignBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequence, 1, type: :uint64
  field :timestamp, 2, type: :uint64
  field :diversifier, 3, type: :string

  field :data_type, 4,
    type: Ibc.Lightclients.Solomachine.V2.DataType,
    json_name: "dataType",
    enum: true,
    deprecated: false

  field :data, 5, type: :bytes
end

defmodule Ibc.Lightclients.Solomachine.V2.HeaderData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :new_pub_key, 1, type: Google.Protobuf.Any, json_name: "newPubKey", deprecated: false
  field :new_diversifier, 2, type: :string, json_name: "newDiversifier", deprecated: false
end

defmodule Ibc.Lightclients.Solomachine.V2.ClientStateData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :path, 1, type: :bytes
  field :client_state, 2, type: Google.Protobuf.Any, json_name: "clientState", deprecated: false
end

defmodule Ibc.Lightclients.Solomachine.V2.ConsensusStateData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :path, 1, type: :bytes

  field :consensus_state, 2,
    type: Google.Protobuf.Any,
    json_name: "consensusState",
    deprecated: false
end

defmodule Ibc.Lightclients.Solomachine.V2.ConnectionStateData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :path, 1, type: :bytes
  field :connection, 2, type: Ibc.Core.Connection.V1.ConnectionEnd
end

defmodule Ibc.Lightclients.Solomachine.V2.ChannelStateData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :path, 1, type: :bytes
  field :channel, 2, type: Ibc.Core.Channel.V1.Channel
end

defmodule Ibc.Lightclients.Solomachine.V2.PacketCommitmentData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :path, 1, type: :bytes
  field :commitment, 2, type: :bytes
end

defmodule Ibc.Lightclients.Solomachine.V2.PacketAcknowledgementData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :path, 1, type: :bytes
  field :acknowledgement, 2, type: :bytes
end

defmodule Ibc.Lightclients.Solomachine.V2.PacketReceiptAbsenceData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :path, 1, type: :bytes
end

defmodule Ibc.Lightclients.Solomachine.V2.NextSequenceRecvData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :path, 1, type: :bytes
  field :next_seq_recv, 2, type: :uint64, json_name: "nextSeqRecv", deprecated: false
end