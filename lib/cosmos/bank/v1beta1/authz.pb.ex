defmodule Cosmos.Bank.V1beta1.SendAuthorization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :spend_limit, 1,
    repeated: true,
    type: Cosmos.Base.V1beta1.Coin,
    json_name: "spendLimit",
    deprecated: false

  field :allow_list, 2, repeated: true, type: :string, json_name: "allowList", deprecated: false
end