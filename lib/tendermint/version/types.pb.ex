defmodule Tendermint.Version.App do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :protocol, 1, type: :uint64
  field :software, 2, type: :string
end

defmodule Tendermint.Version.Consensus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block, 1, type: :uint64
  field :app, 2, type: :uint64
end