defmodule Cosmos.Ics23.V1.HashOp do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:NO_HASH, 0)
  field(:SHA256, 1)
  field(:SHA512, 2)
  field(:KECCAK256, 3)
  field(:RIPEMD160, 4)
  field(:BITCOIN, 5)
  field(:SHA512_256, 6)
  field(:BLAKE2B_512, 7)
  field(:BLAKE2S_256, 8)
  field(:BLAKE3, 9)
end

defmodule Cosmos.Ics23.V1.LengthOp do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:NO_PREFIX, 0)
  field(:VAR_PROTO, 1)
  field(:VAR_RLP, 2)
  field(:FIXED32_BIG, 3)
  field(:FIXED32_LITTLE, 4)
  field(:FIXED64_BIG, 5)
  field(:FIXED64_LITTLE, 6)
  field(:REQUIRE_32_BYTES, 7)
  field(:REQUIRE_64_BYTES, 8)
end

defmodule Cosmos.Ics23.V1.ExistenceProof do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :bytes)
  field(:value, 2, type: :bytes)
  field(:leaf, 3, type: Cosmos.Ics23.V1.LeafOp)
  field(:path, 4, repeated: true, type: Cosmos.Ics23.V1.InnerOp)
end

defmodule Cosmos.Ics23.V1.NonExistenceProof do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :bytes)
  field(:left, 2, type: Cosmos.Ics23.V1.ExistenceProof)
  field(:right, 3, type: Cosmos.Ics23.V1.ExistenceProof)
end

defmodule Cosmos.Ics23.V1.CommitmentProof do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:proof, 0)

  field(:exist, 1, type: Cosmos.Ics23.V1.ExistenceProof, oneof: 0)
  field(:nonexist, 2, type: Cosmos.Ics23.V1.NonExistenceProof, oneof: 0)
  field(:batch, 3, type: Cosmos.Ics23.V1.BatchProof, oneof: 0)
  field(:compressed, 4, type: Cosmos.Ics23.V1.CompressedBatchProof, oneof: 0)
end

defmodule Cosmos.Ics23.V1.LeafOp do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:hash, 1, type: Cosmos.Ics23.V1.HashOp, enum: true)
  field(:prehash_key, 2, type: Cosmos.Ics23.V1.HashOp, json_name: "prehashKey", enum: true)
  field(:prehash_value, 3, type: Cosmos.Ics23.V1.HashOp, json_name: "prehashValue", enum: true)
  field(:length, 4, type: Cosmos.Ics23.V1.LengthOp, enum: true)
  field(:prefix, 5, type: :bytes)
end

defmodule Cosmos.Ics23.V1.InnerOp do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:hash, 1, type: Cosmos.Ics23.V1.HashOp, enum: true)
  field(:prefix, 2, type: :bytes)
  field(:suffix, 3, type: :bytes)
end

defmodule Cosmos.Ics23.V1.ProofSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:leaf_spec, 1, type: Cosmos.Ics23.V1.LeafOp, json_name: "leafSpec")
  field(:inner_spec, 2, type: Cosmos.Ics23.V1.InnerSpec, json_name: "innerSpec")
  field(:max_depth, 3, type: :int32, json_name: "maxDepth")
  field(:min_depth, 4, type: :int32, json_name: "minDepth")
  field(:prehash_key_before_comparison, 5, type: :bool, json_name: "prehashKeyBeforeComparison")
end

defmodule Cosmos.Ics23.V1.InnerSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:child_order, 1, repeated: true, type: :int32, json_name: "childOrder")
  field(:child_size, 2, type: :int32, json_name: "childSize")
  field(:min_prefix_length, 3, type: :int32, json_name: "minPrefixLength")
  field(:max_prefix_length, 4, type: :int32, json_name: "maxPrefixLength")
  field(:empty_child, 5, type: :bytes, json_name: "emptyChild")
  field(:hash, 6, type: Cosmos.Ics23.V1.HashOp, enum: true)
end

defmodule Cosmos.Ics23.V1.BatchProof do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:entries, 1, repeated: true, type: Cosmos.Ics23.V1.BatchEntry)
end

defmodule Cosmos.Ics23.V1.BatchEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:proof, 0)

  field(:exist, 1, type: Cosmos.Ics23.V1.ExistenceProof, oneof: 0)
  field(:nonexist, 2, type: Cosmos.Ics23.V1.NonExistenceProof, oneof: 0)
end

defmodule Cosmos.Ics23.V1.CompressedBatchProof do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:entries, 1, repeated: true, type: Cosmos.Ics23.V1.CompressedBatchEntry)

  field(:lookup_inners, 2,
    repeated: true,
    type: Cosmos.Ics23.V1.InnerOp,
    json_name: "lookupInners"
  )
end

defmodule Cosmos.Ics23.V1.CompressedBatchEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof(:proof, 0)

  field(:exist, 1, type: Cosmos.Ics23.V1.CompressedExistenceProof, oneof: 0)
  field(:nonexist, 2, type: Cosmos.Ics23.V1.CompressedNonExistenceProof, oneof: 0)
end

defmodule Cosmos.Ics23.V1.CompressedExistenceProof do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :bytes)
  field(:value, 2, type: :bytes)
  field(:leaf, 3, type: Cosmos.Ics23.V1.LeafOp)
  field(:path, 4, repeated: true, type: :int32)
end

defmodule Cosmos.Ics23.V1.CompressedNonExistenceProof do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field(:key, 1, type: :bytes)
  field(:left, 2, type: Cosmos.Ics23.V1.CompressedExistenceProof)
  field(:right, 3, type: Cosmos.Ics23.V1.CompressedExistenceProof)
end
