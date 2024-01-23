defmodule Cosmos.Base.Kv.V1beta1.Pairs do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pairs, 1, repeated: true, type: Cosmos.Base.Kv.V1beta1.Pair, deprecated: false
end

defmodule Cosmos.Base.Kv.V1beta1.Pair do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :bytes
  field :value, 2, type: :bytes
end