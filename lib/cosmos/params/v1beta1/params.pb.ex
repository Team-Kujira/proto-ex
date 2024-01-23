defmodule Cosmos.Params.V1beta1.ParameterChangeProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :changes, 3, repeated: true, type: Cosmos.Params.V1beta1.ParamChange, deprecated: false
end

defmodule Cosmos.Params.V1beta1.ParamChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :subspace, 1, type: :string
  field :key, 2, type: :string
  field :value, 3, type: :string
end