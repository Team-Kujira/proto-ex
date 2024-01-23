defmodule Ibc.Lightclients.Solomachine.V3.ClientState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequence, 1, type: :uint64
  field :is_frozen, 2, type: :bool, json_name: "isFrozen", deprecated: false

  field :consensus_state, 3,
    type: Ibc.Lightclients.Solomachine.V3.ConsensusState,
    json_name: "consensusState",
    deprecated: false
end

defmodule Ibc.Lightclients.Solomachine.V3.ConsensusState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :public_key, 1, type: Google.Protobuf.Any, json_name: "publicKey", deprecated: false
  field :diversifier, 2, type: :string
  field :timestamp, 3, type: :uint64
end

defmodule Ibc.Lightclients.Solomachine.V3.Header do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :timestamp, 1, type: :uint64
  field :signature, 2, type: :bytes

  field :new_public_key, 3,
    type: Google.Protobuf.Any,
    json_name: "newPublicKey",
    deprecated: false

  field :new_diversifier, 4, type: :string, json_name: "newDiversifier", deprecated: false
end

defmodule Ibc.Lightclients.Solomachine.V3.Misbehaviour do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequence, 1, type: :uint64

  field :signature_one, 2,
    type: Ibc.Lightclients.Solomachine.V3.SignatureAndData,
    json_name: "signatureOne",
    deprecated: false

  field :signature_two, 3,
    type: Ibc.Lightclients.Solomachine.V3.SignatureAndData,
    json_name: "signatureTwo",
    deprecated: false
end

defmodule Ibc.Lightclients.Solomachine.V3.SignatureAndData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :signature, 1, type: :bytes
  field :path, 2, type: :bytes
  field :data, 3, type: :bytes
  field :timestamp, 4, type: :uint64
end

defmodule Ibc.Lightclients.Solomachine.V3.TimestampedSignatureData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :signature_data, 1, type: :bytes, json_name: "signatureData", deprecated: false
  field :timestamp, 2, type: :uint64
end

defmodule Ibc.Lightclients.Solomachine.V3.SignBytes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sequence, 1, type: :uint64
  field :timestamp, 2, type: :uint64
  field :diversifier, 3, type: :string
  field :path, 4, type: :bytes
  field :data, 5, type: :bytes
end

defmodule Ibc.Lightclients.Solomachine.V3.HeaderData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :new_pub_key, 1, type: Google.Protobuf.Any, json_name: "newPubKey", deprecated: false
  field :new_diversifier, 2, type: :string, json_name: "newDiversifier", deprecated: false
end