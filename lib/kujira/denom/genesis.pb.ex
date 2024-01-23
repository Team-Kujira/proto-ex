defmodule Kujira.Denom.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Kujira.Denom.Params, deprecated: false

  field :factory_denoms, 2,
    repeated: true,
    type: Kujira.Denom.GenesisDenom,
    json_name: "factoryDenoms",
    deprecated: false
end

defmodule Kujira.Denom.GenesisDenom do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom, 1, type: :string, deprecated: false

  field :authority_metadata, 2,
    type: Kujira.Denom.DenomAuthorityMetadata,
    json_name: "authorityMetadata",
    deprecated: false
end