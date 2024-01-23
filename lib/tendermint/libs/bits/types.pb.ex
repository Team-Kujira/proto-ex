defmodule Tendermint.Libs.Bits.BitArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bits, 1, type: :int64
  field :elems, 2, repeated: true, type: :uint64
end