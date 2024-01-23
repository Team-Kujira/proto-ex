defmodule Cosmos.Crypto.Multisig.V1beta1.MultiSignature do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :signatures, 1, repeated: true, type: :bytes
end

defmodule Cosmos.Crypto.Multisig.V1beta1.CompactBitArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :extra_bits_stored, 1, type: :uint32, json_name: "extraBitsStored"
  field :elems, 2, type: :bytes
end