defmodule Kujira.Scheduler.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Kujira.Scheduler.Params, deprecated: false
  field :hookList, 2, repeated: true, type: Kujira.Scheduler.Hook, deprecated: false
  field :hookCount, 3, type: :uint64
end