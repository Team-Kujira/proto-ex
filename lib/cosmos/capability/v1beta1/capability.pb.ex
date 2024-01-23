defmodule Cosmos.Capability.V1beta1.Capability do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index, 1, type: :uint64
end

defmodule Cosmos.Capability.V1beta1.Owner do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :module, 1, type: :string
  field :name, 2, type: :string
end

defmodule Cosmos.Capability.V1beta1.CapabilityOwners do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :owners, 1, repeated: true, type: Cosmos.Capability.V1beta1.Owner, deprecated: false
end