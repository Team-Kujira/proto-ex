defmodule Kujira.Scheduler.Hook do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :uint64
  field :executor, 2, type: :string
  field :contract, 3, type: :string
  field :msg, 4, type: :bytes, deprecated: false
  field :frequency, 5, type: :int64
  field :funds, 6, repeated: true, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end