defmodule Kujira.Scheduler.CreateHookProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :executor, 3, type: :string
  field :contract, 4, type: :string
  field :msg, 5, type: :bytes, deprecated: false
  field :frequency, 6, type: :int64
  field :funds, 7, repeated: true, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end

defmodule Kujira.Scheduler.UpdateHookProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :id, 3, type: :uint64
  field :executor, 4, type: :string
  field :contract, 5, type: :string
  field :msg, 6, type: :bytes, deprecated: false
  field :frequency, 7, type: :int64
  field :funds, 8, repeated: true, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end

defmodule Kujira.Scheduler.DeleteHookProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :id, 3, type: :uint64
end