defmodule Ibc.Core.Commitment.V1.MerkleRoot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hash, 1, type: :bytes
end

defmodule Ibc.Core.Commitment.V1.MerklePrefix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key_prefix, 1, type: :bytes, json_name: "keyPrefix", deprecated: false
end

defmodule Ibc.Core.Commitment.V1.MerklePath do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key_path, 1, repeated: true, type: :string, json_name: "keyPath", deprecated: false
end

defmodule Ibc.Core.Commitment.V1.MerkleProof do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :proofs, 1, repeated: true, type: Cosmos.Ics23.V1.CommitmentProof
end