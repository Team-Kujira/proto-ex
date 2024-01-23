defmodule Cosmos.Capability.V1beta1.GenesisOwners do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index, 1, type: :uint64

  field :index_owners, 2,
    type: Cosmos.Capability.V1beta1.CapabilityOwners,
    json_name: "indexOwners",
    deprecated: false
end

defmodule Cosmos.Capability.V1beta1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index, 1, type: :uint64

  field :owners, 2,
    repeated: true,
    type: Cosmos.Capability.V1beta1.GenesisOwners,
    deprecated: false
end