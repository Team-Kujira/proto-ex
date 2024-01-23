defmodule Kujira.Denom.DenomAuthorityMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :Admin, 1, type: :string, deprecated: false
end